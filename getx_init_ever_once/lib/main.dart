// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_init_ever_once/controller/global_data_controller.dart';
import 'package:getx_init_ever_once/page/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(GlobalDataController());
    return GetMaterialApp(
      home: LoginPage(),
    );
  }
}
