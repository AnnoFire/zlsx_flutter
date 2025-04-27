import 'package:get/get.dart';

import '../modules/account/login/bindings/account_login_binding.dart';
import '../modules/account/login/views/account_login_view.dart';
import '../modules/account/logoff/bindings/account_logoff_binding.dart';
import '../modules/account/logoff/views/account_logoff_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ACCOUNT_LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const AccountLoginView(),
      binding: AccountLoginBinding(),
    ),
    GetPage(
      name: _Paths.LOGOFF,
      page: () => const AccountLogoffView(),
      binding: AccountLogoffBinding(),
    ),
  ];
}
