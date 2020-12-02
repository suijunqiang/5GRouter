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
		struct string s;
		init_string(&s);

		struct curl_slist *chunk = NULL;

		printf("SJQ: curl_post_get: send_data: %s \n\r", send_data);
		printf("SJQ: curl_post_get: url: %s\n\r", url);
		printf("SJQ: JSON\n\r");

		headers = curl_slist_append(headers, "Content-Type:application/json;charset=UTF-8");
		curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headers);
		curl_easy_setopt(curl, CURLOPT_URL, url);				  //url地址
		curl_easy_setopt(curl, CURLOPT_POSTFIELDS, send_data);	  //post参数
		curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, writefunc); //对返回的数据进行操作的函数地址
		curl_easy_setopt(curl, CURLOPT_WRITEDATA, result);		  //这是write_data的第四个参数值
		curl_easy_setopt(curl, CURLOPT_CUSTOMREQUEST, "POST");
		curl_easy_setopt(curl, CURLOPT_POST, 1); //设置问非0表示本次操作为post
		//curl_easy_setopt(curl, CURLOPT_VERBOSE, 1); //打印调试信息
		//curl_easy_setopt(g_curl, CURLOPT_HEADER, 1); //将响应头信息和相应体一起传给write_data
		curl_easy_setopt(curl, CURLOPT_FOLLOWLOCATION, 1); //设置为非0,响应头信息location
		curl_easy_setopt(curl, CURLOPT_COOKIEFILE, "/data/curlposttest.cookie");
		curl_easy_setopt(curl, CURLOPT_NOSIGNAL, 1L);
		curl_easy_setopt(curl, CURLOPT_FORBID_REUSE, 1);
		curl_easy_setopt(curl, CURLOPT_TIMEOUT, 5L);

		res = curl_easy_perform(curl);
		if (res != CURLE_OK)
		{
			switch (res)
			{
			case CURLE_UNSUPPORTED_PROTOCOL:
				printf("%s Does not support agreement %s", "FAIL", curl_easy_strerror(res));
				break;
			case CURLE_COULDNT_CONNECT:
				printf("%s not link remote server", "FAIL");
				break;
			case CURLE_HTTP_RETURNED_ERROR:
				printf("%s http return failed", "FAIL");
				break;
			case CURLE_READ_ERROR:
				printf("%s read local file failed", "FAIL");
				break;
			default:
				printf("%s curl other error", "FAIL");
				break;
			}

			iRet = RES_FAIL;
		}
		else
		{
			iRet = RES_SUCCESS;
		}
		printf("%s\n\r", s.ptr);
		free(s.ptr);
		curl_easy_cleanup(curl);
	} //end of if(curl)
	return iRet;
}
// #define TEST_USEING_TLS
extern const char *test_ca_get();

static void topic1_handler(void *client, message_data_t *msg)
{
	(void)client;
	MQTT_LOG_I("-----------------------------------------------------------------------------------");
	MQTT_LOG_I("%s:%d %s()...\ntopic: %s\nmessage:%s", __FILE__, __LINE__, __FUNCTION__, msg->topic_name, (char *)msg->message->payload);
	MQTT_LOG_I("-----------------------------------------------------------------------------------");
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
	struct string *result;
	init_string(result);

	printf("SJQ:%s\n\r", strcat(tmp_url, local_ip));
	printf("SJQ:%s\n\r", strcat(tmp_url, login_url));
	printf("SJQ: tmp_url:%s\n\r", tmp_url);
	curl_post_get("{\"password\":\"21232f297a57a5a743894a0e4a801fc3\",\"username\":\"21232f297a57a5a743894a0e4a801fc3\"}", tmp_url, result);
	printf("SJQ: result:%s\n\r", result.ptr);
	memset(tmp_url, 0, sizeof(tmp_url));
	printf("SJQ:%s\n\r", strcat(tmp_url, local_ip));
	printf("SJQ:%s\n\r", strcat(tmp_url, login_status_url));
	memset(result, 0, sizeof(result));
	curl_post_get("", tmp_url, result);
	printf("SJQ: result:%s\n\r", result.ptr);
	memset(tmp_url, 0, sizeof(tmp_url));
	printf("SJQ:%s\n\r", strcat(tmp_url, local_ip));
	printf("SJQ:%s\n\r", strcat(tmp_url, get_default_lang));
	memset(result, 0, sizeof(result));
	curl_post_get("", tmp_url, result);
	printf("SJQ: result:%s\n\r", result.ptr);

	sleep(2);

	mqtt_list_subscribe_topic(client);

	msg.payload = (void *)buf;

	while (1)
	{
		//sprintf(buf, "test mqtt-www - publish test  \"broadcast\":1  a rand number: %d ...", random_number());
		sprintf(buf, "{\"retcode\":0,\"status\":1,\"wifiList\":[{\"ssidstatus\":1,\"ssid\":\"5G-Box-2G-75E8\",\"securitykey\":\"12345678\",\"securitymode\":0,\"broadcast\":1,\"freqband\":0,\"band\":0,\"bandwidth\":0,\"channel\":0,\"mode\":6,\"maxuser\": 16,\"sleeptime\":0},{\"ssidstatus\":1,\"ssid\":\"5G-Box-5G-75E9\",\"securitykey\":\"12345678\",\"securitymode\":4,\"broadcast\":1,\"freqband\":1,\"band\":1,\"bandwidth\":0,\"channel\":0,\"mode\":6,\"maxuser\":16,\"sleeptime \":0}]}");
		//sprintf(buf, "{\"retcode\":0,\"sleeptime \":0}]}");

		msg.qos = 0;
		mqtt_publish(client, "message", &msg);

		msg.qos = 1;
		mqtt_publish(client, "topic2", &msg);

		msg.qos = 2;
		mqtt_publish(client, "topic3", &msg);

		sleep(4);
	}

	free(result);
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
	mqtt_set_port(client, "1883");
#endif

	//mqtt_set_host(client, "www.jiejie01.top");
	mqtt_set_host(client, "suijunqiang.top");
	mqtt_set_client_id(client, random_string(10));
	mqtt_set_user_name(client, random_string(10));
	mqtt_set_password(client, random_string(10));
	mqtt_set_clean_session(client, 1);

	mqtt_connect(client);

	mqtt_subscribe(client, "message", QOS0, topic1_handler);
	mqtt_subscribe(client, "topic2", QOS1, NULL);
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
