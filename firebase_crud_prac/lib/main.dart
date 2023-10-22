import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'main_page.dart';

void main() async {
  //runApp전 꼭 있어야할 함수.
  WidgetsFlutterBinding.ensureInitialized(); //메인 함수에서 비동기 함수(await)가 있을때만 해줘야함.
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}
