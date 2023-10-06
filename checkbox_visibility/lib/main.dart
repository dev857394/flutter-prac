import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var isChecked = false;
  var isLogined = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            //visibillity
            //if 대신 사용가능
            child: Column(
              children: [
                Text('안녕하세요'),
                Visibility(
                  visible: false,
                  child: Text('당신은 회원입니다'),
                ),
                Text('반가워요')
              ],
            ),

            //checkbox
            child: Checkbox(
              value: isChecked,
              onChanged: (value) {
                isChecked = value!;
                setState(() {}); //체크박스 항상 stateful widget+setstate로 이용
              },
            ),
          ),
        ),
      ),
    );
  }
}
