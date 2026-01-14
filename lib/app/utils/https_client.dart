import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zlsx_flutter/app/components/custom_toast.dart';
import 'package:zlsx_flutter/app/config/env_config.dart';

class HttpsClient {
  //静态属性共享内存空间
  static String domain = EnvConfig.apiBaseUrl;
  static Dio dio = Dio();

  HttpsClient() {
    dio.options.baseUrl = domain;
    dio.options.connectTimeout = Duration(milliseconds: 3000);
    dio.options.receiveTimeout = Duration(milliseconds: 3000);
    dio.options.sendTimeout = Duration(milliseconds: 3000);
    dio.options.headers = {
      "Sec-Fetch-Mode": "no-cors",
      "Sec-Fetch-Site": "cross-site",
      // "Authorization": "Bearer ${HttpsClient().getToken()}"
      //临时token
      "Authorization":
          "eyJhbGciOiJIUzUxMiJ9.eyJ1c2VyX2lkIjozMTksInVzZXJfa2V5IjoiZTgxODc4Y2ItOGJjYi00YWEzLTkyMTktY2Q3OTE5MTIyMWQzIiwidXNlcm5hbWUiOiJ4dWRvbmdoIn0.cRB_UkcTjMXs2f_qAtqiXoPlcE4xcT73ybwEZjQ9SVWlGTNjYEF9LSKY0-Yuesxu07Y9CkiSqhmx0GelHTs0cQ"
    };
  }

  Future get(String api) async {
    try {
      var response = await dio.get(api);
      if (response.data['code'] == 0 && response.data != null) {
        return response;
      } else {
        CustomToast.show(msg: response.data['data']['msg']);
        return null;
      }
    } catch (e) {
      CustomToast.show(msg: '请求出错:${e.toString()}');
      return null;
    }
  }

  Future post(String api, {data}) async {
    try {
      var response = await dio.post(api, data: data);
      if (response.data['code'] == 0 && response.data != null) {
        return response;
      } else {
        CustomToast.show(msg: response.data['data']['msg']);
        return null;
      }
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
