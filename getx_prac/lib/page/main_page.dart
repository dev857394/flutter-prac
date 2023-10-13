// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_prac/controller/app_global_data_controller.dart';
import 'package:getx_prac/page/memo_page.dart';
import 'package:getx_prac/page/user_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get.put(): mainpage가 빌드되면서 getController가 전역으로 사용될수 있게 됨
    var controller = Get.put(
        AppGlobalDataController(
          name: "hyerim",
          age: 99,
          memos: [],
        ),
        //tag를 지정해주면 find 할 때도 tag를 넣어서 찾아야함.
        tag: "My Secret Controller");

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("${controller.name}님/${controller.age}살"),
          TextButton(
              onPressed: () {
                Get.to(() => MemoPage());
              },
              child: Text("to memopage")),
          TextButton(
              onPressed: () {
                Get.to(() => UserPage());
              },
              child: Text("to userpage")),
          TextButton(
              onPressed: () {
                controller.memos.add("새로운 메모가 들어갑니다");
              },
              child: Text("Add memo")),
        ],
      ),
    );
  }
}
