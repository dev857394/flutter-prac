import 'package:get/get.dart';

import '../controller/login_controller.dart';
import '../view/page/login_page.dart';
import '../view/page/main_page.dart';
import 'app_route.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoute.login,
      page: () => LoginPage(),
      binding: BindingsBuilder(
        () {
          Get.put(LoginController());
        },
      ),
    ),
    GetPage(
      name: AppRoute.main,
      page: () => MainPage(),
    ),
  ];
}
