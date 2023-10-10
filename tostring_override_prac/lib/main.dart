// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Word {
  String word;
  String meaning;
  String example;
  Word({
    required this.word,
    required this.meaning,
    required this.example,
  });

  //print toString했을때 객체의 속성을 어떻게 보여줄지 정할 수 있음.
  @override
  String toString() =>
      'Word(word: $word, meaning: $meaning, example: $example)';

  // 우리가 만든 클래스에 대한 비교 기준을 재정의 할 수 있음.
  @override
  operator ==(Object other) {
    // operator에서 파라미터를 넣은 결과값을 true 리턴으로 세팅하면 무조건 true로 나옴.
    return true;

    // other의 객체 타입이 Word이면 true
    if (other is Word) {
      return word == other.word;
    }
    return false;
  }
}

void main() {
  Word word = Word(word: "apple", meaning: "사과", example: "Give me an apple.");
  print(word.toString());

  Word wordA = Word(word: "apple", meaning: "사과", example: "Give me an apple.");
  Word wordB = Word(word: "apple", meaning: "사과", example: "Give me an apple.");

  // operator에서 파라미터를 넣은 결과값을 true 리턴으로 세팅하면 무조건 true로 나옴.
  print(wordA == 3);

  // false: wordA type is Word, "apple" type is String
  print(wordA == "apple");

  //true: wordA type, wordB type : Word
  print(wordA == wordB);
}
