import 'package:dio/dio.dart';
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
  var dio = Dio();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('SNIPER FACTORY'),
              FutureBuilder(
                future: Future.delayed(Duration(seconds: 3)),
                future: dio.get('https://sniperfactory.com/sfac/http_test'),
                future: Future.delayed(Duration(seconds: 3), () => "hello"),
                builder: (context, snapshot) {
                  print('현재 스냅샷 정보 : ${snapshot.connectionState}');
                  print('hasData 값 : ${snapshot.hasData}');
                  // print(snapshot.connectionState);
                  if (snapshot.connectionState == ConnectionState.done) {
                  //더 간단하게
                  if (snapshot.hasData) {
                    // 현재 futurebuilder의 상태가 끝났을 때
                    return Text(snapshot.data?.data.toString() ?? "실패 ");//data가 null이면 뒤의 것들 실행안함
                    return Text(snapshot.data!.data.toString());
                    return Text(snapshot.data!.data["result"]);
                    return Text("Done");
                  }
                  //실정한 동안 원형으로 도는 로딩
                  return CircularProgressIndicator();
                  // 로딩바
                  return LinearProgressIndicator();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
