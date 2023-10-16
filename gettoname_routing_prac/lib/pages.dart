import 'package:get/get.dart';
import 'package:gettoname_routing_prac/util/app_route.dart';

import 'login_page.dart';
import 'main_page.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoute.login, page: () => const LoginPage()),
    GetPage(name: AppRoute.main, page: () => const MainPage()),
  ];
}
