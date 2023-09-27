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
  String? result = "";

  void getData() async {
    var url = 'https://sniperfactory.com/sfac/http_randomly_null';
    var res = await dio.get(url);
    var item = res.data["item"];

    //삼항연산자로 null처리
    result = item["name"] != null ? item["name"] : "데이터를 불러올 수 없습니다";

    //if문으로 null 처리
    if (item["name"] != null) {
      result = item["name"];
    } else {
      result = "데이터를 불러올 수 없습니다.";
    }

    setState(() {});

    // print(item["name"]);
    // print(item["description"]);
    // print(item["image"]);
    // print(item["price"]);
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
              if (result != null) Text(result!),
              TextButton(
                onPressed: () {
                  getData();
                },
                child: Text("getData"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
