// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //메인 함수에서 비동기 함수(await)가 있을때만 해줘야함.
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    //listen : 상태가 변화하면 감지함.
    //ever와 동작이 같음
    FirebaseAuth.instance //싱글톤 객체 가져오기
        .authStateChanges() //인증이 바뀌는 것을
        .listen(
      //계속 지켜보고 실행하겠다.
      (user) {
        if (user != null) {
          print(FirebaseAuth.instance.currentUser);
          print("회원가입 됐거나 유저가 들어왔다");
          print(FirebaseAuth.instance.currentUser!.email);
          print(FirebaseAuth.instance.currentUser!.displayName);
          print(FirebaseAuth.instance.currentUser!.uid);

          return;
        } else {
          print("회원가입이나 로그인이 필요함");
        }
      },
    );
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}
