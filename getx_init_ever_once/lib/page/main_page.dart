// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_init_ever_once/controller/global_data_controller.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<GlobalDataController>();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // controller.user(null);
          controller.user.value = null; // null값을 넣을때만 이 형식 사용
        },
        child: Icon(Icons.logout),
      ),
      body: Center(
        child: Text("Main Page"),
      ),
    );
  }
}
