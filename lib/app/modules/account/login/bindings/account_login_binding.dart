import 'package:get/get.dart';

import '../controllers/account_login_controller.dart';

class AccountLoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountLoginController>(
      () => AccountLoginController(),
    );
  }
}
