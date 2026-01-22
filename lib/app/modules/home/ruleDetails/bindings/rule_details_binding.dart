import 'package:get/get.dart';

import '../controllers/rule_details_controller.dart';

class RuleDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RuleDetailsController>(
      () => RuleDetailsController(),
    );
  }
}
