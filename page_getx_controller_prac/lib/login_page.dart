// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_getx_controller_prac/controller/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});
  static const String route = "/login";

  @override
  Widget build(BuildContext context) {
    // var controller = Get.find<LoginController>();
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Login Page"),
              TextField(
                controller: controller.idController,
                decoration: InputDecoration(hintText: "id"),
              ),
              TextField(
                controller: controller.pwController,
                decoration: InputDecoration(hintText: "pw"),
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                  onPressed: controller.login(), child: Text("로그인하기"))
            ],
          ),
        ),
      ),
    );
  }
}
