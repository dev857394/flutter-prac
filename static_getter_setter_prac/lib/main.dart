import 'package:flutter/material.dart';

void main() {
  var stu1 = Student("name", "studentId");
  print(stu1.studentInfo);
  print(stu1.nameLength);
  print(stu1.nameAsList);
}

class Student {
  static const schoolName = "Teddy's School";
  String studentId;
  String name;

  Student(this.name, this.studentId);

  String get studentInfo => studentId + name + "GoodStudent";
  int get nameLength => name.length;
  List get nameAsList => [name];
}
