import 'package:get/get.dart';

import '../controllers/account_logoff_controller.dart';

class AccountLogoffBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountLogoffController>(
      () => AccountLogoffController(),
    );
  }
}
