import 'package:get/get.dart';

import 'package:zlsx_flutter/app/modules/home/ruleDetails/controllers/rule_details_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RuleDetailsController>(
      () => RuleDetailsController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
