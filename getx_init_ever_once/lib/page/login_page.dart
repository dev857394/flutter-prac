// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_init_ever_once/controller/global_data_controller.dart';
import 'package:getx_init_ever_once/model/user.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<GlobalDataController>();
    return Scaffold(
      body: Center(
        child: TextButton(
            onPressed: () {
              print(controller.user);
              controller.user(User(id: "userid", nickname: "nickname"));
            },
            child: Text('login')),
      ),
    );
  }
}
