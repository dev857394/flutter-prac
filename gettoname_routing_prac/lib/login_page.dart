// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static const String route = "/login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Login Page"),
              TextField(
                decoration: InputDecoration(hintText: "id"),
              ),
              TextField(
                decoration: InputDecoration(hintText: "pw"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
