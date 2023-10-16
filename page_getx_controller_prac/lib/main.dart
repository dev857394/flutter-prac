import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:page_getx_controller_prac/controller/login_controller.dart';
import 'package:page_getx_controller_prac/controller/main_controller.dart';
import 'package:page_getx_controller_prac/login_page.dart';

import 'app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialBinding: BindingsBuilder(() {
        Get.lazyPut(() =>
            LoginController()); //lazyPut으로 GetMaterialApp, LoginPagee 사용되면 대기상태였던 logincontroller가 메모리에 올라감
        Get.lazyPut(() => MainController());
      }),
      getPages: AppPages.pages,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: LoginPage.route,
      home: const LoginPage(),
    );
  }
}
