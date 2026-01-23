import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zlsx_flutter/app/models/rule_details_model.dart';
import 'package:zlsx_flutter/app/utils/https_client.dart';

class RuleDetailsController extends GetxController {
  //TODO: Implement RuleDetailsController
  // RxMap details = {}.obs;
  Rxn<RuleDetailsModel> details = Rxn<RuleDetailsModel>();
  RxInt customerId = 7.obs;

  // getter
  // activityName, chargeType, orderBeginDate, orderEndDate, orderType
  late final RuleDetailsModel(:activityName, :chargeType, :orderBeginDate, :orderEndDate, :orderType) = details.value;

  // 获取信息
  Future<void> getDetailsById(id) async {
    try {
      final res = await HttpsClient()
          .post("/zxhsd-yuntaigou-system/yuntaigou//api/activity/getById", id);
      details.value = RuleDetailsModal.fromJson(res.data['data']);
      debugPrint('${details.value}');
    } catch (e) {
      debugPrint('error: $e');
    }
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    if (Get.arguments != null) {
      customerId.value = Get.arguments;
    }
    getDetailsById(customerId.value);
    //TODO: 没有id 的情况 加载慢
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
