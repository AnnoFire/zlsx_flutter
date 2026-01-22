import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zlsx_flutter/app/utils/https_client.dart';

class RuleDetailsController extends GetxController {
  //TODO: Implement RuleDetailsController
  RxList details = [].obs;
  RxInt customerId = 0.obs;
  // 获取信息
  Future<void> getDetailsById(id) async {
    try {
      final res = await HttpsClient()
          .post("/zxhsd-yuntaigou-system/yuntaigou//api/activity/getById", id);
      details.value = res.data['data'];
    } catch (e) {
      debugPrint('error: $e');
    }
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    getDetailsById(customerId);
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
