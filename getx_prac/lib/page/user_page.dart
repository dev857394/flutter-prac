// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_prac/controller/app_global_data_controller.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    //put으로 올린 데이터를 find로 찾아옴
    var controller =
        Get.find<AppGlobalDataController>(tag: "My Secret Controller");
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(controller.name),
          Text(controller.age.toString()),
          Text("현재 메모 수 ${controller.memos.length}")
        ],
      ),
    );
  }
}
