import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zlsx_flutter/app/models/order/order_list_model.dart';
import 'package:zlsx_flutter/app/models/user/user_info_model.dart';
import 'package:zlsx_flutter/app/utils/https_client.dart';

class HomeController extends GetxController {
  // 滚动控制器
  final ScrollController scrollController = ScrollController();
  Rxn<UserInfoModal> userInfo = Rxn<UserInfoModal>();
  // 订单列表
  RxList<OrderListModel> orderList = <OrderListModel>[].obs;
  RxBool hasNext = true.obs;

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
          "/zxhsd-yuntaigou-system/yuntaigou/api/activity/getList",
          {"pageNum": pageNum, "pageSize": pageSize});
      if (response != null &&
          response.data != null &&
          response.data['data'] != null) {
        var list = response.data['data']['list'] as List? ?? [];
        var newList = list.map((e) => OrderListModel.fromJson(e)).toList();

        if (pageNum == 1) {
          orderList.assignAll(newList);
        } else {
          orderList.addAll(newList);
        }
        hasNext.value = response.data['data']['hasNextPage'] ?? false;
      }
    } catch (e) {
      debugPrint('getOrderList 错误: $e');
    }
    return;
  }

  void scrollerListener() {
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
              scrollController.position.maxScrollExtent &&
          hasNext.value) {
        debugPrint('加载更多');
        getOrderList(pageNum: orderList.length ~/ 10 + 1);
      }
    });
  }

  @override
  void onInit() {
    super.onInit();
    scrollerListener();
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
