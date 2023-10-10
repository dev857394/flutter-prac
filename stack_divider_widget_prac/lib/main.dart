import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("플러터 굉장하다"),
        ),
        body: Column(
          children: [
            //stack
            Stack(
              children: [
                Container(
                  color: Colors.red,
                  width: 250,
                  height: 250,
                ),
                // 아래 컨테이너의 값이 위를 덮음
                Positioned(
                  right: 0, // 각 포지션 코너로 붙는다
                  bottom: 0, // 아래 코너로
                  child: Container(
                    color: Colors.blue.withOpacity(0.4),
                    width: 200,
                    height: 200,
                  ),
                )
              ],
            )

            // divider
            ListTile(
              title: Text("1번"),
            ),
            Divider(
              height: 48,
              thickness: 4,
              indent: 24, //얼마나 들여넣을건지
              endIndent: 24, //indent 반대쪽
            ),
            ListTile(
              title: Text("2번 타일"),
            )
          ],
        ),
      ),
    );
  }
}
