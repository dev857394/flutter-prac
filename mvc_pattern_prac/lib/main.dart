import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controller/login_controller.dart';
import 'controller/main_controller.dart';
import 'util/app_pages.dart';
import 'view/page/main_page.dart';

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
        Get.put(
            LoginController()); //lazyPut으로 GetMaterialApp, LoginPagee 사용되면 대기상태였던 logincontroller가 메모리에 올라감
        Get.put(MainController());
      }),
      getPages: AppPages.pages,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: MainPage.route,
      // home: const LoginPage(),
    );
  }
}
