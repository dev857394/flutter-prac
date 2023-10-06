import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var myfriends = [
      'friend1',
      'friend1',
      'friend1',
      'friend1',
      'friend1',
      'friend1',
      'friend1',
      'friend1',
      'friend1',
      'friend1'
    ];
    var iterableMyFriends = myfriends.map((e) => Text(e));

    var categories = [
      'category1',
      'category1',
      'category1',
      'category1',
      'category1',
      'category1',
      'category1',
      'category1',
      'category1'
    ];

    var listMethodPrac = MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            scrollDirection: Axis.horizontal, //가로스크롤
            children: categories.map((e) {
              // return Text(e);

              // 카테고리 형 위젯
              return Chip(label: Text('e'));
            }).toList(),
          ),
        ),
      ),
    );

    var mathScore = [96, 92, 94, 95, 73, 98, 78, 82, 96, 48];

    var mathScoreMap = MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('10개월 간의 수학 점수'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // children: mathScore.map(
                  //   (e) {
                  //     return Container(
                  //       width: e * 2,
                  //       height: 24,
                  //       margin: const EdgeInsets.all(16),
                  //       decoration: BoxDecoration(
                  //         gradient: LinearGradient(
                  //           colors: [
                  //             Colors.greenAccent,
                  //             Colors.white,
                  //           ],
                  //         ),
                  //       ),
                  //     );
                  //   },
                  // ).toList(),

                  //expression body
                  children: mathScore
                      .map(
                        (e) => Container(
                          width: e * 2,
                          height: 24,
                          margin: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.greenAccent,
                                Colors.white,
                              ],
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    var mathScoreWhere = MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('10개월 간의 수학 점수'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // children: mathScore.map(
                  //   (e) {
                  //     return Container(
                  //       width: e * 2,
                  //       height: 24,
                  //       margin: const EdgeInsets.all(16),
                  //       decoration: BoxDecoration(
                  //         gradient: LinearGradient(
                  //           colors: [
                  //             Colors.greenAccent,
                  //             Colors.white,
                  //           ],
                  //         ),
                  //       ),
                  //     );
                  //   },
                  // ).toList(),

                  //where로 조건 걸기
                  // children: mathScore
                  //     .where((element) => element > 90)
                  //     .map(
                  //       (e) => Container(
                  //         width: e * 2,
                  //         height: 24,
                  //         margin: const EdgeInsets.all(16),
                  //         decoration: BoxDecoration(
                  //           gradient: LinearGradient(
                  //             colors: [
                  //               Colors.greenAccent,
                  //               Colors.white,
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     )
                  //     .toList(),

                  children: myfriends
                      .where((element) => element.length == 5)
                      .map((e) => Text(e))
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    var listViewBuilderWidgetPrac = MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Text(
                  index.toString(),
                  style: TextStyle(fontSize: 20),
                ); //itembuilder에는 return으로 위젯 반환
              },
              itemCount: 10,
            ),
          ),
        ),
      ),
    );

    var mapFunctionPrac = MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Text(index.toString()); //itembuilder에는 return으로 위젯 반환
            },
            itemCount: 10,
          ),
        ),
      ),
    );

    return mathScoreWhere;
  }
}
