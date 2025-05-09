import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  Future post(String api, {data}) async {
    try {
      var response = await dio.post(api, data: data);
      return response;
    } catch (e) {
      return null;
    }
  }

  static replaceUrl(String url) {
    String tempUrl = domain + url;
    return tempUrl.replaceAll('\\', '/');
  }

  Future<void> saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('auth_token', token);
  }

  Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('auth_token');
  }

  Future<void> removeToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('auth_token');
  }
}
