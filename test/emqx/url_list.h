#ifndef URL_LIST
#define URL_LIST
#include <stdio.h>


//basic APIs
char local_ip[]                     = "http://192.168.1.1/";
char login_url[]                    = "goform/login";
char login_status_url[]             = "goform/GetLoginInfo";
char login_out[]                    = "action/logout";
char get_default_lang[]             = "goform/GetDefaultLanguage";
char set_default_lang[]             = "goform/SetDefaultLanguage";

//SIM card APIs
char get_sim_info[]                 = "action/GetSimInfo";
char get_sim_WirelessNetworkInfo[]  = "action/GetWirelessNetworkInfo";
char get_dail_status[]              = "action/GetDialStatus";
char get_Mobile_status[]            = "action/GetMobileStatusInfo";
char get_Mobile_ConnectionInfo[]    = "action/GetMobileConnectionInfo";
char delete_apn[]                   = "action/DeleteProfile";
char add_apn[]                      = "action/AddProfile";
char set_apn[]                      = "action/SetProfile";
char set_mobile_dataRoamingStatus[] = "action/SetMobileDataRoamingStatus";
char set_mobile_dataStatus[]        = "action/SetMobileDataStatus";
char set_network_searchMode[]       = "action/SetNetworkSearchMode";
char get_network_list[]             = "action/GetNetworkList";
char manual_reg_network[]           = "action/ManualRegNetwork";
char get_reg_networkStatus[]        = "action/GetRegNetworkStatus";
char get_rf_parameters[]            = "action/GetRFParameters";

//Wireless APIs
char wifi_get_status[]              = "action/WifiGetStatus";
char get_wireless_Info[]            = "action/GetWirelessInfo";
char set_wireless_Info[]            = "action/SetWirelessInfo";
char wifi_wps_set[]                 = "action/WifiWpsSet";
char wifi_wps_connectStaus[]        = "action/WifiWpsConnectStatus";
char get_client_info[]              = "action/GetClientsInfo";

//System APIs
char reboot[]                       = "action/reboot";
char reset[]                        = "action/reset";
char get_system_status[]            = "goform/GetSystemStatus";
char modify_user_name[]             = "goform/ModifyUsername";
char get_statistics_info[]          = "action/GetStatisticsInfo";
char get_statistics_config[]        = "action/GetStatisticsConfig";

//Router APIs
char get_firewall_cfg[]             = "action/GetFirewallCfg";
char set_firewall_cfg[]             = "action/SetFirewallCfg";
char get_lan_ip_filterCfg[]         = "action/GetLanIpFilterCfg";
char set_lan_ip_filterCfg[]         = "action/SetLanIpFilterCfg";
char get_mac_filterCfg[]            = "action/GetMacFilterCfg";
char set_mac_filterCfg[]            = "action/SetMacFilterCfg";

char * get_lang();


char * get_lang(void){ 
	char tmp_url[150] = {0};
	memset(tmp_url, 0, sizeof(tmp_url));
  printf("SJQ:%s\n\r", strcat(tmp_url, local_ip));
  printf("SJQ:%s\n\r", strcat(tmp_url, get_default_lang));
  	
	return tmp_url;
}




#endif //URL_LIST
