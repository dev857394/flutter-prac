// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';
import 'package:getx_init_ever_once/model/user.dart';
import 'package:getx_init_ever_once/page/login_page.dart';
import 'package:getx_init_ever_once/page/main_page.dart';

class GlobalDataController extends GetxController {
  Rxn<User> user = Rxn();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("컨트롤러가 생성됨");
    ever(user, (value) {
      print("에버 실행됨 ${value}");
      // user 객체가 없으면 loginpage로
      if (value == null) {
        Get.to(() => LoginPage());
        return;
      }
      Get.to(() => MainPage());
      return;
    });
  }
}
