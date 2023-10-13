// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_prac/controller/app_global_data_controller.dart';

class MemoPage extends StatelessWidget {
  const MemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount:
              Get.find<AppGlobalDataController>(tag: "My Secret Controller")
                  .memos
                  .length,
          itemBuilder: (context, index) => ListTile(
            title: Text(
                Get.find<AppGlobalDataController>(tag: "My Secret Controller")
                    .memos[index]),
          ),
        ),
      ),
    );
  }
}
