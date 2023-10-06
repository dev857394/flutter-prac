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
  //처음 빌드 될때는 변수가 안녕
  String message = "반가워";
  int level = 1;

  @override
  Widget build(BuildContext context) {
    var statefulWidgetPrac = MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            message = "반가워";
            //
            setState(() {});
          },
          child: Icon(
            Icons.change_circle,
          ),
        ),
        body: Center(
          child: Text(message),
        ),
      ),
    );

    var levelUpStatefulWidgetPrac = MaterialApp(
      home: Scaffold(
        body: Center(
          child: InkWell(
            onTap: () {
              level += 1;
              setState(() {});
            },
            child: Text('현재 $level 레벨입니다.'),
          ),
        ),
      ),
    );

    return levelUpStatefulWidgetPrac;
  }
}
