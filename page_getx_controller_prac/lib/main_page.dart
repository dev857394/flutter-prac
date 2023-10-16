import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_getx_controller_prac/controller/main_controller.dart';

import 'app_route.dart';

class MainPage extends GetView<MainController> {
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
              onPressed: controller.toLogin,
              child: Text("로그인으로 이동"),
            ),
          ],
        ),
      ),
    );
  }
}
