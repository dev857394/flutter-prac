// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  _handleSignUpButton() {
    print("회원가입 버튼 눌러짐");
    FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: 'text@gmail.com', password: '12341234');
  }

  _handleLoginButton() async {
    var res = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: 'test@gmail.com', password: '12341234');

    print(res);
    // print(res.user.email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Text("input id"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Text("input pw"),
              ),
            ),
            ElevatedButton(onPressed: _handleLoginButton, child: Text("로그인하기")),
            ElevatedButton(
                onPressed: _handleSignUpButton, child: Text("회원가입하기")),
            ElevatedButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              child: Text("로그아웃"),
            ),
            IconButton(
              onPressed: signInWithGoogle,
              icon: Icon(Icons.g_mobiledata),
            )
          ],
        ),
      ),
    );
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
