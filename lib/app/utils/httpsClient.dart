import 'package:dio/dio.dart';

class HttpsClient {
  //静态属性共享内存空间
  static String domain = "https://dev.app.zxhsd.com/gateway";
  static Dio dio = Dio();

  HttpsClient() {
    dio.options.baseUrl = domain;
    dio.options.connectTimeout = Duration(milliseconds: 5000);
    dio.options.receiveTimeout = Duration(milliseconds: 5000);
  }

  Future get(String api) async {
    try {
      var response = await dio.get(api);
      
      return response;
    } catch (e) {
      return null;
    }
  }

  static replaceUrl(String url) {
    String tempUrl = domain + url;
    return tempUrl.replaceAll('\\', '/');
  }
}
