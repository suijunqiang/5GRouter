#ifndef URL_LIST
#define URL_LIST

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
char get_statistics_info[]          = "action/GetStatis";


#endif //URL_LIST
