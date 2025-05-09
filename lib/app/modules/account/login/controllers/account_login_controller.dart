import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:zlsx_flutter/app/utils/httpsClient.dart';

class AccountLoginController extends GetxController {
  //TODO: Implement AccountLoginController

  final phoneController = TextEditingController();
  final codeController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final phoneNumber = ''.obs;
  final code = ''.obs;
  var uuid = '';
  var expireTime = '';

  @override
  void onInit() {
    super.onInit();
  }

  // 验证手机号
  void validatePhone(value) {
    if (value == null || value.isEmpty) {
      Fluttertoast.showToast(msg: '请输入手机号码');
      // return '请输入手机号码';
    }
    if (!RegExp(r'^1[3-9]\d{9}$').hasMatch(value)) {
      Fluttertoast.showToast(msg: '请输入正确的手机号码');
      // return '请输入正确的手机号码';
    }
    update();
  }

  void getCode() async {
    var response = await HttpsClient()
        .post("zxhsd-yuntaigou-system/yuntaigou/captcha/smsCode", data: {
      "mobile": phoneNumber.value,
    });
    if(response.data['code'] == 0){
      uuid = response.data['uuid'];
      expireTime = response.data['expireTime'];
    }
    print(response);
    update();
  }

  void userLogin() async {
    var response = await HttpsClient()
        .post("zxhsd-yuntaigou-system/yuntaigou/auth/mobile/login", data: {
      "mobile": phoneNumber.value,
      "code": code.value,
      "uuid":''
    });
    if(response.data['code'] == 0){
      //保存token
      HttpsClient().saveToken(response.data['token']);
      //跳转到首页
      Get.offAllNamed('/home');
    }
    update();
  }
}
