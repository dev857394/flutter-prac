import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

  var myFriends = [
    {
      "phone": "010-1111-1111",
      "name": "hyerim",
      "category": "010-1111-1111",
    },
    {
      "phone": "010-1111-1111",
      "name": "hyerim",
      "category": "010-1111-1111",
    },
    {
      "phone": "010-1111-1111",
      "name": "hyerim",
      "category": "010-1111-1111",
    },
    {
      "phone": "010-1111-1111",
      "name": "hyerim",
      "category": "010-1111-1111",
    },
  ];

  print(myFriends[1]['phone']);

  //value의 데이터타입이 다양할때 dynamic
  Map<String, dynamic> myInfo = {
    "name": "hyerim",
    "age": 11,
    "car": [
      "마세라티",
      "마세라티",
      "마세라티",
    ]
  };

  print(myInfo[0]["car"][1]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var mapPrac = MaterialApp();
    return mapPrac;
  }
}
