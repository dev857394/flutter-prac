// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlutterLogo(
          size: 94,
        ),
        Text(
          "비밀듣는고양이",
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
