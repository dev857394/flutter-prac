// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvc_pattern_prac/view/widget/app_logo.dart';

import '../../controller/main_controller.dart';

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
            AppLogo(),
            Text("MAIN PAGE"),
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
