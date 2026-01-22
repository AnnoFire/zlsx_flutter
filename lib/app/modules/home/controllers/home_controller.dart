import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zlsx_flutter/app/models/order/order_list_modal.dart';
import 'package:zlsx_flutter/app/models/user/user_info_model.dart';
// import 'package:zlsx_flutter/app/models/user/user_permissions_model.dart';
import 'package:zlsx_flutter/app/utils/https_client.dart';

class HomeController extends GetxController {
  /// 滚动控制器
  ScrollController _scrollController = ScrollController();
  //TODO: Implement HomeController
  Rxn<UserInfoModal> userInfo = Rxn<UserInfoModal>();
  RxList permissionsList = [].obs;

  //TODO: orderList的类型
  // RxList<OrderListModal> orderList = <OrderListModal>[].obs;
  RxList orderList = [].obs;

  Future<void> getUserInfo() async {
    try {
      var response = await HttpsClient()
          .get("/zxhsd-yuntaigou-system/yuntaigou/user/getInfo");
      if (response.data['user'] != null) {
        //TODO: 权限控制

        // Rx是响应式变量，要用value; 赋值用fromJson
        userInfo.value = UserInfoModal.fromJson(response.data['user']);
      }
    } catch (e) {
      debugPrint('error: $e');
    }
  }

  Future<void> getOrderList({pageNum = 1, pageSize = 10}) async {
    try {
      var response = await HttpsClient().post(
          "/zxhsd-yuntaigou-system/yuntaigou//api/activity/getList",
          {"pageNum": pageNum, "pageSize": pageSize});
      if (response != null) {
        orderList.value = response.data['data']['list'];
        // debugPrint('$orderList');
      }
    } catch (e) {
      debugPrint('getOrderList 错误: $e');
    }
    return;
  }

  @override
  void onInit() {
    super.onInit();
    _scrollController.addListener(() {});
    getUserInfo();
    getOrderList();
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
