import 'package:get/get.dart';
import 'package:page_getx_controller_prac/login_page.dart';

class MainController extends GetxController {
  toLogin() {
    Get.to(LoginPage.route);
  }
}
