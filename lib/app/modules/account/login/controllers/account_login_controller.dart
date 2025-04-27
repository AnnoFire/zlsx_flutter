import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zlsx_flutter/app/utils/httpsClient.dart';

class AccountLoginController extends GetxController {
  //TODO: Implement AccountLoginController

  final phoneController = TextEditingController();
  final codeController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void onInit() {
    super.onInit();
  }

  getCode() async {
    var response = await HttpsClient().get("zxhsd-yuntaigou-system/yuntaigou/captcha/smsCode");
    print(response);
  }
  
  login() {
    if (_formKey.currentState!.validate()) {
      print("登录");
    }
  }
}
