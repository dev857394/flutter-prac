// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:dio/dio.dart';
import 'package:serialization_prac/model/todo.dart';

import 'model/book_data.dart';
import 'model/json_data.dart';
import 'model/random_nation.dart';
import 'model/rick_and_morty_data.dart';

void main() async {
  // runApp(const MyApp());
  var todoList = await getTodoData();
  print(todoList[0].title);
  print(todoList[1].title);
  print(todoList[2].title);
}

String url = "https://random-data-api.com/api/v2/addresses";
Dio dio = Dio();

void getData() async {
  var response = await dio.get(url);
  print(response.data.runtimeType);
  var strData = response.data.toString();
  print(strData);
  Map<String, dynamic> newMap = response.data;
  var newJsonData = JsonData.fromMap(newMap);
  // print("NEW MAP DATA = $newMapData");

  print(newJsonData.id);
  print(newJsonData.city);
  print(newJsonData.country);
}

void getRandomNationData() async {
  var response =
      await dio.get("https://random-data-api.com/api/nation/random_nation");

  Map<String, dynamic> mapData = response.data;
  var randomNation = RandomNation.fromMap(mapData);

  print(randomNation.nationality);
  print(randomNation.language);
  print(randomNation.uid);
}

void getRickMortyData() async {
  var resp = await dio.get("https://rickandmortyapi.com/api/location/3");
  print(resp.data.toString());
  print("========================");
  print(resp.data["residents"].runtimeType);

  var newRickAndMortyData = RickAndMortyData.fromMap(resp.data);

  print(newRickAndMortyData.name);
  print(newRickAndMortyData.created);
  print(newRickAndMortyData.residents);
}

List<Book> bookList = [];

void getBookData() async {
  var resp = await dio.get("https://api.tablebackend.com/v1/rows/PMkGApvVNScu");
  print(resp.data["data"]);

  List<dynamic> mapList = resp.data["data"];
  print("MAP = ${mapList[0]}");

  bookList.clear();

  for (var element in mapList) {
    Book book = Book.fromMap(element);
    bookList.add(book);
  }

  print("BOOKLIST = $bookList");
  print("BOOKLIST.id = ${bookList[0].id}");
  print("BOOKLIST.name = ${bookList[0].name}");
}

Future<List<Todo>> getTodoData() async {
  Dio dio = Dio();
  String url = "https://jsonplaceholder.typicode.com/todos";
  var resp = await dio.get(url);
  print(resp.data); //List<dynamic>
  if (resp.statusCode == 200) {
    var data = List<Map<String, dynamic>>.from(resp.data);
    return data.map((e) => Todo.fromMap(e)).toList();
  }
  return [];
}
