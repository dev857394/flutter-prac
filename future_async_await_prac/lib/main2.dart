import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

// 플러터에서 버튼을 누르면 네트워크에서 데이터를 가져오고 난 뒤 응답을 화면에 갱신하는 코드
class _MyAppState extends State<MyApp> {
  var message = '';

  Future<String> getData() async {
    var dio = Dio();
    var res = await dio.get("https://sniperfactory.com/sfac/http_test");
    return res.data["result"];
  }

  void handleOnPressed() async {
    message = await getData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(message),
              TextButton(
                onPressed: () {
                  handleOnPressed();
                },
                child: Text('데이터 가져오기'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
