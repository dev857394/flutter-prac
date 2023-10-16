import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gettoname_routing_prac/login_page.dart';
import 'package:gettoname_routing_prac/util/app_route.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  static const String route = "/main";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("main page"),
          TextButton(
            onPressed: () {
              // Get.toNamed("/login");
              // Get.toNamed(LoginPage.route);
              Get.offAndToNamed(AppRoute.login); //로그인페이지 이동 후 전 화면으로 뒤로가기 못하게함
            },
            child: Text("로그인으로 이동"),
          )
        ],
      )),
    );
  }
}
