import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zlsx_flutter/app/models/user/user_info_model.dart';
// import 'package:zlsx_flutter/app/models/user/user_permissions_model.dart';
import 'package:zlsx_flutter/app/utils/https_client.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  Rxn<UserInfoModal> userInfo = Rxn<UserInfoModal>();
  RxList permissionsList = [].obs;
  RxList orderList = [].obs;

  Future<void> getUserInfo() async {
    try {
      var response = await HttpsClient().get(
          "https://dev.app.zxhsd.com/gateway/zxhsd-yuntaigou-system/yuntaigou/user/getInfo");
      // debugPrint('data: $response');
      if (response.data['user'] != null) {
        //TODO: 权限控制
        userInfo.value = UserInfoModal.fromJson(response.data['user']);
      }
    } catch (e) {
      debugPrint('error: $e');
    }
  }

  Future<void> getOrderList() async {
    var response =
        await HttpsClient().get("zxhsd-yuntaigou-system/yuntaigou/order/list");
    orderList.value = response;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    getUserInfo();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
