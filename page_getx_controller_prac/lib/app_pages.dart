import 'package:page_getx_controller_prac/controller/login_controller.dart';

import 'app_route.dart';
import 'login_page.dart';
import 'main_page.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoute.login,
      page: () => const LoginPage(),
      binding: BindingsBuilder(
        () {
          Get.put(LoginController());
        },
      ),
    ),
    GetPage(
      name: AppRoute.main,
      page: () => const MainPage(),
    ),
  ];
}
