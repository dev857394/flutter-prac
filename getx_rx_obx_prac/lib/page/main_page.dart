// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/app_global_data_controller.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<AppGlobalDataController>();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Obx(): 관측가능한 위젯으로 setstate없이 화면에 데이터 변화가 반영된다.
            //데이터 타입이 관측 가능한 형태여야 한다. ex) controller.RxInt 등등
            Obx(() => Text(controller.myLevel.value.toString())),

            ElevatedButton(
              onPressed: () {
                // controller.myLevel += 1;
                print(controller.myLevel);
                controller.myLevel(controller.myLevel.value + 1);
              },
              child: Text("+1"),
            ),
            Obx(() => Text(controller.myName.value)),
            ElevatedButton(
                onPressed: () {
                  controller.myName('yun hyerim');
                },
                child: Text("이름 변경")),
          ],
        ),
      ),
    );
  }
}
