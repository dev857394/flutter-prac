import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; // import

//get
void main() async {
  print("http 테스트하기");
  var url = 'https://sniperfactory.com/sfac/http_test';
  var response = await http.get(Uri.parse(url));

  print(response);
  print(response.statusCode);
  print(response.body);
}

void main() async {
  print("http 테스트하기");
  var url = 'https://sniperfactory.com/sfac/http_only_test';
  var response = await http.post(Uri.parse(url));

  print(response);
  print(response.statusCode);
  print(response.body);
}
