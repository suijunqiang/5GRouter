/*
 * @Author: jiejie
 * @Github: https://github.com/jiejieTop
 * @Date: 2019-12-11 21:53:07
 * @LastEditTime: 2020-06-08 20:45:33
 * @Description: the code belongs to jiejie, please keep the author information and source code according to the license.
 */
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>
#include <pthread.h>

#include "mqtt_config.h"
#include "mqtt_log.h"
#include "mqttclient.h"
//curl to get/send gatway info
#include <curl/curl.h>
#include "url_list.h"
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/ioctl.h>
#include <net/if.h>        //for struct ifreq
#include <regex.h>

//#include "cJSON/cJSON.h"
//#include "cJSON.h"

//#define COOKIES
#define HEGE_MQTT
//#define IMSI

typedef enum
{
	RES_SUCCESS,
	RES_FAIL

} RES_STATUS;

struct string
{
	char *ptr;
	size_t len;
};

void init_string(struct string *s)
{
	s->len = 0;
	s->ptr = malloc(s->len + 1);
	if (s->ptr == NULL)
	{
		fprintf(stderr, "malloc() failed\n");
		exit(EXIT_FAILURE);
	}
	s->ptr[0] = '\0';
}

size_t writefunc(void *ptr, size_t size, size_t nmemb, struct string *s)
{
	size_t new_len = s->len + size * nmemb;
	s->ptr = realloc(s->ptr, new_len + 1);
	if (s->ptr == NULL)
	{
		fprintf(stderr, "realloc() failed\n");
		exit(EXIT_FAILURE);
	}
	memcpy(s->ptr + s->len, ptr, size * nmemb);
	s->ptr[new_len] = '\0';
	s->len = new_len;

	return size * nmemb;
}

int curl_post_get(char *send_data, char *url, struct string *result)
{
	CURLcode res;
	CURL *curl;
	struct curl_slist *headers = NULL;
	RES_STATUS iRet = RES_SUCCESS;

	curl = curl_easy_init();
	if (curl)
	{

		struct curl_slist *chunk = NULL;

		printf("SJQ: curl_post_get: send_data: %s \n\r", send_data);
		printf("SJQ: curl_post_get: url: %s\n\r", url);
		printf("SJQ: JSON\n\r");

		headers = curl_slist_append(headers, "Content-Type:application/json;charset=UTF-8");
		curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headers);
		curl_easy_setopt(curl, CURLOPT_URL, url);				  //url地址
		curl_easy_setopt(curl, CURLOPT_POSTFIELDS, send_data);	  //post参数
		curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, writefunc); //对返回的数据进行操作的函数地址
		//curl_easy_setopt(curl, CURLOPT_WRITEDATA, &s);		  //这是write_data的第四个参数值
		curl_easy_setopt(curl, CURLOPT_WRITEDATA, result);		  //这是write_data的第四个参数值
		curl_easy_setopt(curl, CURLOPT_CUSTOMREQUEST, "POST");
		curl_easy_setopt(curl, CURLOPT_POST, 1); //设置问非0表示本次操作为post
		curl_easy_setopt(curl, CURLOPT_HEADER, 1); //将响应头信息和相应体一起传给write_data
		curl_easy_setopt(curl, CURLOPT_FOLLOWLOCATION, 1); //设置为非0,响应头信息location
		//curl_easy_setopt(curl, CURLOPT_VERBOSE, 1L);
#ifdef COOKIES
		curl_easy_setopt(curl, CURLOPT_COOKIEFILE, "/data/5GCookies");
#endif
		curl_easy_setopt(curl, CURLOPT_NOSIGNAL, 1L);
		curl_easy_setopt(curl, CURLOPT_FORBID_REUSE, 1);
		curl_easy_setopt(curl, CURLOPT_TIMEOUT, 5L);
#ifdef COOKIES
	  curl_easy_setopt(curl, CURLOPT_COOKIE,"webs.session::fe58a36aa4e4e0712de662e59c368fa4");
	  //curl_easy_setopt(curl, CURLOPT_COOKIE,"192.168.1.1 FALSE / FALSE 0 -goahead-session- ::webs.session::14a83116a9f2f65b07f0c210a6a55c04");
	  //curl_easy_setopt(curl, CURLOPT_COOKIE,"-goahead-session- ::webs.session::14a83116a9f2f65b07f0c210a6a55c04");

		struct curl_slist *cookies = NULL;
		if(NULL !=cookies ){
      printf("SJQ: cookies exist\r\n");
			curl_easy_setopt(curl, CURLOPT_COOKIE,cookies->data);
		}else{
      printf("SJQ: cookies NULL\r\n"); 
		}
#endif //end of COOKIES

		res = curl_easy_perform(curl);



		if (res != CURLE_OK)
		{
      switch (res) {
			case CURLE_UNSUPPORTED_PROTOCOL:
				printf("%s Does not support agreement %s", "FAIL", curl_easy_strerror(res));
				break;
			case CURLE_COULDNT_CONNECT:
				printf("%s not link remote server", "FAIL");
				break;
			case CURLE_HTTP_RETURNED_ERROR:
				printf("%s http return failed", "FAIL");
				break;
				break;
			case CURLE_READ_ERROR:
				printf("%s read local file failed", "FAIL");
				break;
			default:
				printf("%s curl other error", "FAIL");
				break;
			}

			iRet = RES_FAIL;
		} else {
			iRet = RES_SUCCESS;
#ifdef COOKIES
		 if(strstr(url,"goform/login")){ 
				curl_easy_getinfo(curl,CURLINFO_COOKIELIST,&cookies);
				int i=1;
				printf("\r\nSJQ:before while(cookies):\r\n");
				while (cookies) {
						printf("\r\nSJQ:cookies->data:  [%d]: %s\r\b\r\n", i, cookies->data);
						cookies = cookies->next;
						i++;
					}
				
			}
#endif //end of COOKIES
		
		}//end of  (res != CURLE_OK) 
		curl_easy_cleanup(curl);
	} //end of if(curl)
	return iRet;
}
// #define TEST_USEING_TLS
extern const char *test_ca_get();

static void topic1_handler(void *client, message_data_t *msg)
{
	(void)client; 

	if (strstr((char *)msg->message->payload, "reboot"))
	{
		MQTT_LOG_I("-----------------------------------------------------------------------------------");
		MQTT_LOG_I("SJQ: receive mqtt reboot cmd: %s", (char *)msg->message->payload);
		MQTT_LOG_I("-----------------------------------------------------------------------------------");
		system("reboot");
	}
	else if (strstr((char *)msg->message->payload, "upgrade"))
	{
		MQTT_LOG_I("-----------------------------------------------------------------------------------");
		MQTT_LOG_I("SJQ: receive mqtt upgrade cmd: %s", (char *)msg->message->payload);
		MQTT_LOG_I("-----------------------------------------------------------------------------------");
		system("/data/wifidog_update");
	}
	else
	{
		MQTT_LOG_I("-----------------------------------------------------------------------------------");
		MQTT_LOG_I("%s:%d %s()...\ntopic: %s\nmessage:%s", __FILE__, __LINE__, __FUNCTION__, msg->topic_name, (char *)msg->message->payload);
		MQTT_LOG_I("-----------------------------------------------------------------------------------");
	}
}
static void hege_id_topic_handler(void *client, message_data_t *msg)
{
	(void)client; 

	if (strstr((char *)msg->message->payload, "reboot"))
	{
		MQTT_LOG_I("---------------------------hege_id_topic_handler---------------------------------------------");
		MQTT_LOG_I("SJQ: receive mqtt reboot cmd: %s", (char *)msg->message->payload);
		MQTT_LOG_I("---------------------------hege_id_topic_handler-----------------------------------");
		system("reboot");
	}
	else if (strstr((char *)msg->message->payload, "upgrade"))
	{
		MQTT_LOG_I("---------------------------hege_id_topic_handler-----------------------------------");
		MQTT_LOG_I("SJQ: receive mqtt upgrade cmd: %s", (char *)msg->message->payload);
		MQTT_LOG_I("---------------------------hege_id_topic_handler-----------------------------------");
		system("/data/wifidog_update");
	}
	else
	{
		MQTT_LOG_I("---------------------------hege_id_topic_handler----------------------------------");
		MQTT_LOG_I("%s:%d %s()...\ntopic: %s\nmessage:%s", __FILE__, __LINE__, __FUNCTION__, msg->topic_name, (char *)msg->message->payload);
		MQTT_LOG_I("---------------------------hege_id_topic_handler-----------------------------------");
	}
}


void *mqtt_publish_thread(void *arg)
{
	mqtt_client_t *client = (mqtt_client_t *)arg;

	char buf[1000] = {0};
	char tmp_url[150] = {0};
	mqtt_message_t msg;
	memset(&msg, 0, sizeof(msg));
	sprintf(buf, "ldj test mqtt-www");
#if 0
    sprintf(buf, "{\"retcode\":0,\"status\":1,\"wifiList\":[{\"ssidstatus\":1,\"ssid\":\"5G-Box-
2G-75E8\",\"securitykey\":\"12345678\",\"securitymode\":0,\"broadcast\":1,\"
freqband\":0,\"band\":0,\"bandwidth\":0,\"channel\":0,\"mode\":6,\"maxuser\":
16,\"sleeptime\":0},{\"ssidstatus\":1,\"ssid\":\"5G-Box-5G-75E9\",\"
securitykey\":\"12345678\",\"securitymode\":4,\"broadcast\":1,\"freqband\":1,
\"band\":1,\"bandwidth\":0,\"channel\":0,\"mode\":6,\"maxuser\":16,\"sleeptime
\":0}]}");
#endif
	struct string result,cookies;
	init_string(&result);
	init_string(&cookies);

	printf("SJQ:%s\n\r", strcat(tmp_url, local_ip));
	printf("SJQ:%s\n\r", strcat(tmp_url, login_url));
	printf("SJQ: tmp_url:%s\n\r", tmp_url);
	curl_post_get("{\"password\":\"21232f297a57a5a743894a0e4a801fc3\",\"username\":\"21232f297a57a5a743894a0e4a801fc3\"}", tmp_url, &result);
	printf("SJQ: result:%s\n\r", result.ptr);
  
  sleep(2);
  
	memset(tmp_url, 0, sizeof(tmp_url));
	printf("SJQ:%s\n\r", strcat(tmp_url, local_ip));
  
	//printf("SJQ:%s\n\r", strcat(tmp_url, get_dail_status));
	printf("SJQ:%s\n\r", strcat(tmp_url, login_status_url));
	memset(&result, 0, sizeof(result));
	curl_post_get("", tmp_url, &result);
  
  printf("SJQ: URL: %s, result:%d\n\r", tmp_url,result.len);
	printf("SJQ: result:%s\n\r", result.ptr);
	
  sleep(2);

	mqtt_list_subscribe_topic(client);

	msg.payload = (void *)buf;

  memset(tmp_url, 0, sizeof(tmp_url));
  printf("SJQ:%s\n\r", strcat(tmp_url, local_ip));
  printf("SJQ:%s\n\r", strcat(tmp_url, get_sim_info));
  memset(&result, 0, sizeof(result));
  curl_post_get("", tmp_url, &result);

#ifdef IMSI
	cJSON *json = cJSON_CreateObject();
	cJSON *item = NULL;
	json = cJSON_Parse(result.ptr);
	item = cJSON_CreateObject();
	item = cJSON_GetObjectItem(json, "imsi");

	if(item != NULL){ 
		printf("SJQ: json imsi: %s\n\r", item);
		//write imsi into a file
		//it will be read in the process of wifidog
		char str[100];
		sprintf(str, "echo %s >/data/imsi", item);
		system(str); 
	}else{
		printf("SJQ: the item is NULL:\n\r"); 
	}
#endif //IMSI

  printf("SJQ: URL: %s, result:%d \n\r", tmp_url,result.len);
  if (result.len < 1000)
  {
    printf("SJQ: result:%s\n\r", result.ptr);
  }

#ifndef DEBUG_MQTT
	while (1)
#endif //DEBUG_MQTT
	{
    //sprintf(buf, "{\"retcode\":0,\"status\":1,\"wifiList\":[{\"ssidstatus\":1,\"ssid\":\"5G-Box-2G-75E8\",\"securitykey\":\"12345678\",\"securitymode\":0,\"broadcast\":1,\"freqband\":0,\"band\":0,\"bandwidth\":0,\"channel\":0,\"mode\":6,\"maxuser\": 16,\"sleeptime\":0},{\"ssidstatus\":1,\"ssid\":\"5G-Box-5G-75E9\",\"securitykey\":\"12345678\",\"securitymode\":4,\"broadcast\":1,\"freqband\":1,\"band\":1,\"bandwidth\":0,\"channel\":0,\"mode\":6,\"maxuser\":16,\"sleeptime \":0}]}");
		//sprintf(buf, "{\"retcode\":0,\"sleeptime \":0}]}");
		
    memset(tmp_url, 0, sizeof(tmp_url));
  	printf("SJQ:%s\n\r", strcat(tmp_url, local_ip));
  	printf("SJQ:%s\n\r", strcat(tmp_url, get_sim_info));
  	memset(&result, 0, sizeof(result));
  	curl_post_get("", tmp_url, &result);
    printf("SJQ: URL: %s, result:%d \n\r", tmp_url,result.len);
    if (result.len < 1000)
    {
      printf("SJQ: result:%s\n\r", result.ptr);
    }

    sprintf(buf, result.ptr);

		msg.qos = 0;
		mqtt_publish(client, "hege_hangzhou", &msg);
		
		memset(tmp_url, 0, sizeof(tmp_url));
  	printf("SJQ:%s\n\r", strcat(tmp_url, local_ip));
  	printf("SJQ:%s\n\r", strcat(tmp_url, get_default_lang));
  	memset(&result, 0, sizeof(result));
  	curl_post_get("", tmp_url, &result);
    printf("SJQ: URL: %s, result:%d \n\r", tmp_url,result.len); 
    sprintf(buf, result.ptr); 
		msg.qos = 0;
		mqtt_publish(client, "hege_hangzhou", &msg);
    printf("SJQ: result:%s\n\r", result.ptr);
	

#if 0

    printf("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n\r");
		msg.qos = 0;

		mqtt_publish(client, "hege_hangzhou", "{\"retcode\":0,\"status\":1,\"version\":\"v0.01\"}");
 
    printf("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n\r");

#endif

		memset(tmp_url, 0, sizeof(tmp_url));
  	printf("SJQ:%s\n\r", strcat(tmp_url, local_ip));
  	printf("SJQ:%s\n\r", strcat(tmp_url, get_sim_WirelessNetworkInfo));
  	memset(&result, 0, sizeof(result));
  	curl_post_get("", tmp_url, &result);
    printf("SJQ: URL: %s, result:%d \n\r", tmp_url,result.len); 
    sprintf(buf, result.ptr); 
		msg.qos = 0;
		mqtt_publish(client, "hege_hangzhou", &msg);
    printf("SJQ: result:%s\n\r", result.ptr);

		memset(tmp_url, 0, sizeof(tmp_url));
  	printf("SJQ:%s\n\r", strcat(tmp_url, local_ip));
  	printf("SJQ:%s\n\r", strcat(tmp_url, get_dail_status));
  	memset(&result, 0, sizeof(result));
  	curl_post_get("", tmp_url, &result);
    printf("SJQ: URL: %s, result:%d \n\r", tmp_url,result.len); 
    sprintf(buf, result.ptr); 
		msg.qos = 0;
		mqtt_publish(client, "hege_hangzhou", &msg);
    printf("SJQ: result:%s\n\r", result.ptr);

		memset(tmp_url, 0, sizeof(tmp_url));
  	printf("SJQ:%s\n\r", strcat(tmp_url, local_ip));
  	printf("SJQ:%s\n\r", strcat(tmp_url, get_Mobile_status));
  	memset(&result, 0, sizeof(result));
  	curl_post_get("", tmp_url, &result);
    printf("SJQ: URL: %s, result:%d \n\r", tmp_url,result.len); 
    sprintf(buf, result.ptr); 
		msg.qos = 0;
		mqtt_publish(client, "hege_hangzhou", &msg);
    printf("SJQ: result:%s\n\r", result.ptr);

		memset(tmp_url, 0, sizeof(tmp_url));
  	printf("SJQ:%s\n\r", strcat(tmp_url, local_ip));
  	printf("SJQ:%s\n\r", strcat(tmp_url, get_Mobile_ConnectionInfo));
  	memset(&result, 0, sizeof(result));
  	curl_post_get("", tmp_url, &result);
    printf("SJQ: URL: %s, result:%d \n\r", tmp_url,result.len); 
    sprintf(buf, result.ptr); 
		msg.qos = 0;
		mqtt_publish(client, "hege_hangzhou", &msg);
    printf("SJQ: result:%s\n\r", result.ptr);

		memset(tmp_url, 0, sizeof(tmp_url));
  	printf("SJQ:%s\n\r", strcat(tmp_url, local_ip));
  	printf("SJQ:%s\n\r", strcat(tmp_url, get_reg_networkStatus));
  	memset(&result, 0, sizeof(result));
  	curl_post_get("", tmp_url, &result);
    printf("SJQ: URL: %s, result:%d \n\r", tmp_url,result.len); 
    sprintf(buf, result.ptr); 
		msg.qos = 0;
		mqtt_publish(client, "hege_hangzhou", &msg);
    printf("SJQ: result:%s\n\r", result.ptr);

		memset(tmp_url, 0, sizeof(tmp_url));
  	printf("SJQ:%s\n\r", strcat(tmp_url, local_ip));
  	printf("SJQ:%s\n\r", strcat(tmp_url, get_rf_parameters));
  	memset(&result, 0, sizeof(result));
  	curl_post_get("", tmp_url, &result);
    printf("SJQ: URL: %s, result:%d \n\r", tmp_url,result.len); 
    sprintf(buf, result.ptr); 
		msg.qos = 0;
		mqtt_publish(client, "hege_hangzhou", &msg);
    printf("SJQ: result:%s\n\r", result.ptr);

		memset(tmp_url, 0, sizeof(tmp_url));
  	printf("SJQ:%s\n\r", strcat(tmp_url, local_ip));
  	printf("SJQ:%s\n\r", strcat(tmp_url, wifi_get_status));
  	memset(&result, 0, sizeof(result));
  	curl_post_get("", tmp_url, &result);
    printf("SJQ: URL: %s, result:%d \n\r", tmp_url,result.len); 
    sprintf(buf, result.ptr); 
		msg.qos = 0;
		mqtt_publish(client, "hege_hangzhou", &msg);
    printf("SJQ: result:%s\n\r", result.ptr);

		memset(tmp_url, 0, sizeof(tmp_url));
  	printf("SJQ:%s\n\r", strcat(tmp_url, local_ip));
  	printf("SJQ:%s\n\r", strcat(tmp_url, get_wireless_Info));
  	memset(&result, 0, sizeof(result));
  	curl_post_get("", tmp_url, &result);
    printf("SJQ: URL: %s, result:%d \n\r", tmp_url,result.len); 
    sprintf(buf, result.ptr); 
		msg.qos = 0;
		mqtt_publish(client, "hege_hangzhou", &msg);
    printf("SJQ: result:%s\n\r", result.ptr);

		memset(tmp_url, 0, sizeof(tmp_url));
  	printf("SJQ:%s\n\r", strcat(tmp_url, local_ip));
  	printf("SJQ:%s\n\r", strcat(tmp_url, wifi_wps_connectStaus));
  	memset(&result, 0, sizeof(result));
  	curl_post_get("", tmp_url, &result);
    printf("SJQ: URL: %s, result:%d \n\r", tmp_url,result.len); 
    sprintf(buf, result.ptr); 
		msg.qos = 0;
		mqtt_publish(client, "hege_hangzhou", &msg);
    printf("SJQ: result:%s\n\r", result.ptr);

		memset(tmp_url, 0, sizeof(tmp_url));
  	printf("SJQ:%s\n\r", strcat(tmp_url, local_ip));
  	printf("SJQ:%s\n\r", strcat(tmp_url, get_client_info));
  	memset(&result, 0, sizeof(result));
  	curl_post_get("", tmp_url, &result);
    printf("SJQ: URL: %s, result:%d \n\r", tmp_url,result.len); 
    sprintf(buf, result.ptr); 
		msg.qos = 0;
		mqtt_publish(client, "hege_hangzhou", &msg);
    printf("SJQ: result:%s\n\r", result.ptr);

		memset(tmp_url, 0, sizeof(tmp_url));
  	printf("SJQ:%s\n\r", strcat(tmp_url, local_ip));
  	printf("SJQ:%s\n\r", strcat(tmp_url, get_system_status));
  	memset(&result, 0, sizeof(result));
  	curl_post_get("", tmp_url, &result);
    printf("SJQ: URL: %s, result:%d \n\r", tmp_url,result.len); 
    sprintf(buf, result.ptr); 
		msg.qos = 0;
		mqtt_publish(client, "hege_hangzhou", &msg);
    printf("SJQ: result:%s\n\r", result.ptr);

		memset(tmp_url, 0, sizeof(tmp_url));
  	printf("SJQ:%s\n\r", strcat(tmp_url, local_ip));
  	printf("SJQ:%s\n\r", strcat(tmp_url, get_statistics_info));
  	memset(&result, 0, sizeof(result));
  	curl_post_get("", tmp_url, &result);
    printf("SJQ: URL: %s, result:%d \n\r", tmp_url,result.len); 
    sprintf(buf, result.ptr); 
		msg.qos = 0;
		mqtt_publish(client, "hege_hangzhou", &msg);
    printf("SJQ: result:%s\n\r", result.ptr);

		memset(tmp_url, 0, sizeof(tmp_url));
  	printf("SJQ:%s\n\r", strcat(tmp_url, local_ip));
  	printf("SJQ:%s\n\r", strcat(tmp_url, get_statistics_config));
  	memset(&result, 0, sizeof(result));
  	curl_post_get("", tmp_url, &result);
    printf("SJQ: URL: %s, result:%d \n\r", tmp_url,result.len); 
    sprintf(buf, result.ptr); 
		msg.qos = 0;
		mqtt_publish(client, "hege_hangzhou", &msg);
    printf("SJQ: result:%s\n\r", result.ptr);

		memset(tmp_url, 0, sizeof(tmp_url));
  	printf("SJQ:%s\n\r", strcat(tmp_url, local_ip));
  	printf("SJQ:%s\n\r", strcat(tmp_url, get_firewall_cfg));
  	memset(&result, 0, sizeof(result));
  	curl_post_get("", tmp_url, &result);
    printf("SJQ: URL: %s, result:%d \n\r", tmp_url,result.len); 
    sprintf(buf, result.ptr); 
		msg.qos = 0;
		mqtt_publish(client, "hege_hangzhou", &msg);
    printf("SJQ: result:%s\n\r", result.ptr);

		memset(tmp_url, 0, sizeof(tmp_url));
  	printf("SJQ:%s\n\r", strcat(tmp_url, local_ip));
  	printf("SJQ:%s\n\r", strcat(tmp_url, get_lan_ip_filterCfg));
  	memset(&result, 0, sizeof(result));
  	curl_post_get("", tmp_url, &result);
    printf("SJQ: URL: %s, result:%d \n\r", tmp_url,result.len); 
    sprintf(buf, result.ptr); 
		msg.qos = 0;
		mqtt_publish(client, "hege_hangzhou", &msg);
    printf("SJQ: result:%s\n\r", result.ptr);

		memset(tmp_url, 0, sizeof(tmp_url));
  	printf("SJQ:%s\n\r", strcat(tmp_url, local_ip));
  	printf("SJQ:%s\n\r", strcat(tmp_url, get_mac_filterCfg));
  	memset(&result, 0, sizeof(result));
  	curl_post_get("", tmp_url, &result);
    printf("SJQ: URL: %s, result:%d \n\r", tmp_url,result.len); 
    sprintf(buf, result.ptr); 
		msg.qos = 0;
		mqtt_publish(client, "hege_hangzhou", &msg);
    printf("SJQ: result:%s\n\r", result.ptr);





		msg.qos = 1;
		mqtt_publish(client, "topic2", &msg);

		msg.qos = 2;
		mqtt_publish(client, "topic3", &msg);

		sleep(60);
	}

	free(&result);
}
static inline void get_cpuid(unsigned int i, unsigned int * buf)
{
   unsigned int eax,ebx,ecx,edx;
   __asm__ (
			     "cpuid"
					     :"=a"(eax),"=b"(ebx),"=c"(ecx),"=d"(edx):"a"(i));
	     buf[0]=eax;
			     buf[1]=ebx;
					     buf[2]=edx;
							     buf[3]=ecx;
}
static inline void native_cpuid(unsigned int *eax, unsigned int *ebx,
                                unsigned int *ecx, unsigned int *edx)
{
        /* ecx is often an input as well as an output. */
         __asm__ __volatile__("cpuid"
            : "=a" (*eax),
              "=b" (*ebx),
              "=c" (*ecx),
              "=d" (*edx)
            : "0" (*eax), "2" (*ecx));
}
int get_mac(char * mac, int len_limit)    //返回值是实际写入char * mac的字符个数（不包括'\0'）
{
    struct ifreq ifreq;
    int sock;

    if ((sock = socket (AF_INET, SOCK_STREAM, 0)) < 0)
			    {
					        perror ("socket");
									        return -1;
													    }
		    strcpy (ifreq.ifr_name, "eth0");    //Currently, only get eth0
				
				    if (ioctl (sock, SIOCGIFHWADDR, &ifreq) < 0)
							    {
									        perror ("ioctl");
													        return -1;
																	    }
						    
		return snprintf (mac, len_limit, "%X-%X-%X-%X-%X-%X", (unsigned char) ifreq.ifr_hwaddr.sa_data[0], (unsigned char) ifreq.ifr_hwaddr.sa_data[1], (unsigned char) ifreq.ifr_hwaddr.sa_data[2], (unsigned char) ifreq.ifr_hwaddr.sa_data[3], (unsigned char) ifreq.ifr_hwaddr.sa_data[4], (unsigned char) ifreq.ifr_hwaddr.sa_data[5]);
}
int main(void)
{
	int res;
	pthread_t thread1;
	mqtt_client_t *client = NULL;

	printf("\nwelcome to mqttclient test...\n");

	mqtt_log_init();

	client = mqtt_lease();

#ifdef TEST_USEING_TLS
	mqtt_set_port(client, "8883");
	mqtt_set_ca(client, (char *)test_ca_get());
#else
#ifdef HEGE_MQTT
	mqtt_set_port(client, "1883");
#else
	mqtt_set_port(client, "1883"); 
#endif // end of HEGE_MQTT
#endif

	//mqtt_set_host(client, "www.jiejie01.top");
#ifdef HEGE_MQTT
	//mqtt_set_host(client, "124.71.182.225");
	mqtt_set_host(client, "106.14.98.101");
	mqtt_set_client_id(client, random_string(10));
	//mqtt_set_user_name(client, "fdjafjkdjfrl");
	//mqtt_set_password(client, "fdjafjkdjfrl");

	mqtt_set_user_name(client, "admin");
	mqtt_set_password(client, "public");
	mqtt_set_clean_session(client, 1);










  printf("===============================================================\n");
  printf("===============================================================\n");
  printf("===============================================================\n");




  printf("===============================================================\n");


    char buffer[512];

    FILE *fp;
    fp = popen("cat /data/imei.txt", "r");
    if (fp == NULL){
        printf("open error");
    }

    char *output = fgets(buffer,sizeof(buffer),fp);
    if(output == NULL){
        printf("read error"); 
    }
    printf("output:%s\n",output);
    pclose(fp);

    regmatch_t matches[2];
    regex_t re;
    regcomp(&re, "\"imei\":\"([^\"]*)\"", REG_EXTENDED|REG_ICASE);
    int i = regexec(&re, output,
            sizeof(matches)/sizeof(matches[0]),
            (regmatch_t*)&matches,0);

		char *imei;
    if(! i ) {
        imei= strndup(output+matches[1].rm_so, matches[1].rm_eo - matches[1].rm_so);
        printf("got imei:%s\n",imei);
    }

#if 0	
 unsigned eax, ebx, ecx, edx;

  eax = 1; /* processor info and feature bits */
  native_cpuid(&eax, &ebx, &ecx, &edx);

  printf("stepping %d\n", eax & 0xF);
  printf("model %d\n", (eax >> 4) & 0xF);
  printf("family %d\n", (eax >> 8) & 0xF);
  printf("processor type %d\n", (eax >> 12) & 0x3);
  printf("extended model %d\n", (eax >> 16) & 0xF);
  printf("extended family %d\n", (eax >> 20) & 0xFF);

  /* EDIT */
  eax = 3; /* processor serial number */
  native_cpuid(&eax, &ebx, &ecx, &edx);

  /** see the CPUID Wikipedia article on which models return the serial 
      number in which registers. The example here is for 
      Pentium III */
  printf("serial number 0x%08x%08x\n", edx, ecx);

	 unsigned int public[4]; 
	    get_cpuid(0,public);
			printf("SJQ serial number 0x%08x%08x%08x%08x\n", public);
#endif

  printf("===============================================================");






	
#else
	//mqtt_set_host(client, "suijunqiang.top");
	mqtt_set_host(client, "106.14.98.101");
	mqtt_set_client_id(client, random_string(10));
	mqtt_set_user_name(client, random_string(10));
	mqtt_set_password(client, random_string(10));
	mqtt_set_clean_session(client, 1);






#endif // end of HEGE_MQTT

	mqtt_connect(client);

	mqtt_subscribe(client, "hege_hangzhou", QOS0, topic1_handler);
  char id[50] = {0};
	strcat(id, "hege_hangzhou/");
	//strcat(id,client->mqtt_client_id);
	strcat(id,imei);
  MQTT_LOG_E("SJQ: mqtt client id:%s\r\n",imei);
  MQTT_LOG_E("SJQ: hege id:%s\r\n",id);

  free (imei);
  regfree(&re);
	mqtt_subscribe(client, id , QOS1, hege_id_topic_handler);
	mqtt_subscribe(client, "topic3", QOS2, NULL);

	res = pthread_create(&thread1, NULL, mqtt_publish_thread, client);
	if (res != 0)
	{
		MQTT_LOG_E("create mqtt publish thread fail");
		exit(res);
	}

	while (1)
	{
		sleep(100);
	}
}
