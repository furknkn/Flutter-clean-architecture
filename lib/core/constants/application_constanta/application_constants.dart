// ignore_for_file: non_constant_identifier_names, constant_identifier_names

class ApplicationConstants {
  static bool? connection;
  static const NETWORKTOKENNAME = 'X-AUTH-TOKEN';
  static const LANG_ASSET_PATH = 'assets/language';
  static String NETWORKAPIBASEURL = 'https://devapi.mevsimi.com';
  static String NETWORKAPPTOKEN = "";
  static const NETWORKAPILOGIN = 'v2/user/login';
  static const NETWORKAPIIPCONTROL = 'warehouse/app/signal';
  static const NETWORKAPIGETDELIVERJOBLIST =
      'warehouse/order_item/list?field=id&order=descend&page=1&pageSize=1';
  static const NETWORKAPSAVE = "warehouse/order_item/update";
}
