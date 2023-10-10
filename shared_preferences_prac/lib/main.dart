import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;
  SharedPreferences? prefs;

  @override
  void initState() {
    // initState에 async 하면 안됨!!
    super.initState();
    _initPreferences();
  }

  void _initPreferences() async {
    prefs = await SharedPreferences.getInstance();
    //저장된 prefs값 가져오기
    if (prefs != null) {
      _counter = prefs!.getInt("_counter") ?? 0;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            "$_counter",
            style: TextStyle(fontSize: 48),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // print(prefs);
            print(_counter);
            setState(() => _counter += 1);

            //prefs 값 저장
            if (prefs != null) {
              prefs!.setInt("_counter", _counter);
            }
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
