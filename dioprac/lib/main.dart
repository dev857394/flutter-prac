import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
  var url = 'https://sniperfactory.com/sfac/http_json_data';

  // Http
  void getDataUsingHttp() async {
    var res = await http.get(Uri.parse(url));
    print(res.body); //.body로 하지 않으면 객체 타입이 출력됨
    print('Http : ${res.body.runtimeType}'); //String type
  }

  // Dio
  void getDataUsingDio() async {
    //dio.get type은 future
    //future type은 await과 같이 써야함
    var res = await dio.get(
      'https://sniperfactory.com/sfac/http_only_jwt_included',
      'https://sniperfactory.com/sfac/http_json_data',
      options: Options(
        headers: {
          'user-agent':
              'Chrome', // 사용자가 접속한 브라우저가 무엇인지 알고 있을 때, 크롤링 봇을 막을때 유용하게 사용(하지만 user-agent를 설정하면 무효화 가능)
          'authorization': 'Bearer ey-12312312312312',
        },
      ),
    );

    print(res);
    print('Http : ${res.data.runtimeType}'); //Map type으로 받음
    print(res.data["item"]["name"]); //바로 받는게 가능
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
              TextButton(
                onPressed: () {
                  getDataUsingHttp();
                },
                child: Text("getdatausinghttp"),
              ),
              TextButton(
                onPressed: () {
                  getDataUsingDio();
                },
                child: Text("getdatausingdio"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
