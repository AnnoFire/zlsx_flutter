import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zlsx_flutter/app/utils/https_client.dart';

class ClassesController extends GetxController {
  //TODO: Implement ClassesController
  RxString activityId = '7'.obs;
  RxString customerId = '1476'.obs;

  Future<void> getActivityStatistic(activityId, customerId) async {
    try {
      final res = await HttpsClient().post(
          '/zxhsd-yuntaigou-system/yuntaigou/api/activity/getActivityStatisticForManage',
          {'activityId': activityId, 'customerId': customerId});
    } catch (e) {
      debugPrint('error: $e');
    }
    return;
  }

  Future<void> orderCustomerDetail(
      activityId, customerId, memberName, pageNum, pageSize) async {
    try {
      final res = await HttpsClient().post(
          '/zxhsd-yuntaigou-system/yuntaigou/api/activity/getActivityStatisticForManage',
          {
            'activityId': activityId,
            'customerId': customerId,
            'memberName': memberName,
            'pageNum': pageNum,
            'pageSize': pageSize,
          });
    } catch (e) {
      debugPrint('error: $e');
    }
    return;
  }

  @override
  void onInit() {
    super.onInit();
    if (Get.arguments != null) {
      activityId.value = Get.arguments['activityId'];
      customerId.value = Get.arguments['customerId'];
    }
    getActivityStatistic(activityId.value, customerId.value);
    orderCustomerDetail(activityId.value, customerId.value, '', 1, 10);
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
