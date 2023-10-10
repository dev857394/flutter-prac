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
  var currentOpacity = 1.0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // ListView.separated
        body: ListView.separated(
          itemBuilder: (context, index) {
            return Text(index.toString());
          },
          separatorBuilder: (context, index) {
            //사이사이에 divider가 생기고 마지막은 안 생김.
            return Divider();

            //조건적으로 위젯을 줄 수 있다.
            if (index % 3 == 0) return Divider();
            return SizedBox();
          },
          itemCount: 10,
        ),

        //AnimatedOpacity
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                //스스로 opacity 값만큼 위젯이 흐려지는 애니메이션 효과
                opacity: currentOpacity,
                duration: Duration(milliseconds: 300),
                child: GestureDetector(
                  onTap: () {
                    // currentOpacity = 0; // 누르면 서서히 사라짐
                    currentOpacity =
                        currentOpacity == 0 ? 1 : 0; //누르면 보이고 사라지고를 반복
                    setState(() {});
                  },
                  child: Text(
                    "안녕하세요",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                ),
              ),

              //AnimatedContainer
              // 컨테이너 속성값이 자연스럽게 변하는 애니메이션
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                width: 200,
                height: 300,
                color: Colors.red,
              ),

              //AspectRatio
              //가로 대비 세로 값을 정할때 사용
              // 보통 정사각형을 보여줄 때 사용
              AspectRatio(
                aspectRatio: 1 / 1,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: 200,
                  height: 300,
                  color: Colors.blue,
                ),
              ),

              //wrap
              //row와 달리 다음줄로 넘어감
              //보통 카테고리가 많은 경우 chip 위젯들을 다음줄로 넘어가게 사용
              Wrap(
                spacing: 8, //세로 공백
                runSpacing: 8, // 가로 공백
                children: [
                  Container(
                    color: Colors.red,
                    width: 90,
                    height: 40,
                  ),
                  Container(
                    color: Colors.orange,
                    width: 90,
                    height: 40,
                  ),
                  Container(
                    color: Colors.blue,
                    width: 90,
                    height: 40,
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 90,
                    height: 40,
                  ),
                  Container(
                    color: Colors.green,
                    width: 90,
                    height: 40,
                  ),
                  Container(
                    color: Colors.blueGrey,
                    width: 90,
                    height: 40,
                  ),
                  Container(
                    color: Colors.red,
                    width: 90,
                    height: 40,
                  ),
                  Container(
                    color: Colors.red,
                    width: 90,
                    height: 40,
                  ),
                  Container(
                    color: Colors.red,
                    width: 90,
                    height: 40,
                  ),
                  Container(
                    color: Colors.red,
                    width: 90,
                    height: 40,
                  ),
                  Container(
                    color: Colors.red,
                    width: 90,
                    height: 40,
                  ),
                  Container(
                    color: Colors.red,
                    width: 90,
                    height: 40,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
