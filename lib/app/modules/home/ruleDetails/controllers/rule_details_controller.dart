import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zlsx_flutter/app/models/rule_details_model.dart';
import 'package:zlsx_flutter/app/utils/https_client.dart';

class RuleDetailsController extends GetxController {
  //TODO: Implement RuleDetailsController
  // RxMap details = {}.obs;
  Rxn<RuleDetailsModel> details = Rxn<RuleDetailsModel>();
  RxList customerNameList = [].obs;
  RxInt customerId = 7.obs;

  // getter
  RuleDetailsModel? get data => details.value;
  String? get activityName => data?.activityName;
  int? get chargeType => data?.chargeType;
  String? get orderBeginDate => data?.orderBeginDate;
  String? get orderEndDate => data?.orderEndDate;
  int? get orderType => data?.orderType;
  List? get customerList => data?.customerList;

  // 获取信息
  Future<void> getDetailsById(id) async {
    try {
      final res = await HttpsClient()
          .post("/zxhsd-yuntaigou-system/yuntaigou//api/activity/getById", id);
      details.value = RuleDetailsModel.fromJson(res.data['data']);
      if (details.value?.customerList != null) {
        customerNameList.value =
            details.value!.customerList!.map((e) => e.name).toList();
      }
    } catch (e) {
      debugPrint('error: $e');
    }
  }

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
}
