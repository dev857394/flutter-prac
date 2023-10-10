void main() {
  Map<String, dynamic> word = {
    "word": "apple",
    "meaning": "사과",
    "example": "Can I get an apple?",
  };

  var word2 = Word.fromMap(word);
  print(word2.toMap());
  print(word2.toMap().runtimeType);
  // dio.get('url', word2.toMap());
}

class Word {
  String word;
  String meaning;
  String example;
  Word({
    required this.word,
    required this.meaning,
    required this.example,
  });

  @override
  String toString() =>
      'Word(word: $word, meaning: $meaning, example: $example)';

  @override
  operator ==(Object other) => other is Word && word == other.word;

  //데이터 받을때 주로 사용
  Word.fromMap(Map<String, dynamic> map)
      : word = map["word"],
        meaning = map["meaning"],
        example = map["example"];

  //서버에 해당 객체 내용을 보내야할때 주로 사용됨(depend on 백엔드 스펙)
  Map<String, dynamic> toMap() => {
        'word': word,
        "meaning": meaning,
        'example': example,
      };
}
