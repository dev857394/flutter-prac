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

class _MyAppState extends State<MyApp> {
  var dio = Dio();
  String? message = "메세지 가져오기";
  String result = "";

  void getData() async {
    result = "";
    setState(() {});

    try {
      var url = 'https://sniperfactory.com/sfac/http_randomly';
      var res = await dio.get(url);
      result = res.data["item"]["name"];
    } on DioError catch (e) {
      print("에러발생! ${e.type}");
      result = "에러가 발생했습니다";
      // result = e.message;
    } finally {
      setState(() {});
    }
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
              // if (result != null) Text(result!),
              Text(result),
              TextButton(
                onPressed: () {
                  getData();
                },
                child: Text(message!),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
