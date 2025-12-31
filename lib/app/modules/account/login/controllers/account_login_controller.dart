import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zlsx_flutter/app/utils/https_client.dart';
import 'package:zlsx_flutter/app/utils/screen_adapt.dart';
import 'package:zlsx_flutter/app/components/custom_toast.dart';

class AccountLoginController extends GetxController {
  //TODO: Implement AccountLoginController
  final box = GetStorage();
  final phoneController = TextEditingController();
  final codeController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final phoneNumber = ''.obs;
  final code = ''.obs;
  final uuid = ''.obs;

  @override
  void onInit() {
    super.onInit();
  }

  // 验证手机号
  bool validatePhone(value) {
    if (value == null || value.isEmpty) {
      CustomToast.show(msg: '请输入手机号码');
      return false;
    }
    if (!RegExp(r'^1[3-9]\d{9}$').hasMatch(value)) {
      CustomToast.show(msg: '请输入正确的手机号码');
      return false;
    }
    update();
    return true;
  }

  void getCode() async {
    // if (!validatePhone(phoneNumber.value)) return;
    // var response = await HttpsClient().post(
    //     "https://dev.app.zxhsd.com/gateway/zxhsd-yuntaigou-system/yuntaigou/captcha/smsCode",
    //     data: {
    //       "mobile": phoneNumber.value,
    //     });
    // if (response.data['code'] == 0 && response.data != null) {
    //   uuid.value = response.data['data']['uuid'];
    //   await box.write('uuid', uuid.value);
    // }
    CustomToast.show(
      msg: '验证码发送成功，请注意查收',
    );
  }

  void userLogin() async {
    // final savedUuid = box.read('uuid');
    // var response = await HttpsClient().post(
    //     "https://dev.app.zxhsd.com/gateway/zxhsd-yuntaigou-system/yuntaigou/auth/mobile/login",
    //     data: {
    //       "mobile": phoneNumber.value,
    //       "code": code.value,
    //       "uuid": savedUuid,
    //     });
    // if (response.data['code'] == 0) {
    //   //保存token
    //   HttpsClient().saveToken(response.data['token']);
    //   //跳转到首页
    //   Get.offAllNamed('/home');
    // }
    // print(HttpsClient().getToken());
    Get.offAllNamed('/home');
  }
}
