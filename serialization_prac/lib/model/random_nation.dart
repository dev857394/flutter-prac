import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class RandomNation {
  int nationId;
  String uid;
  String nationality;
  String language;
  String capital;
  String nationalSport;
  String flag;

  RandomNation({
    required this.nationId,
    required this.uid,
    required this.nationality,
    required this.language,
    required this.capital,
    required this.nationalSport,
    required this.flag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nationId': nationId,
      'uid': uid,
      'nationality': nationality,
      'language': language,
      'capital': capital,
      'nationalSport': nationalSport,
      'flag': flag,
    };
  }

  factory RandomNation.fromMap(Map<String, dynamic> map) {
    return RandomNation(
      nationId: map['id'] as int,
      uid: map['uid'] as String,
      nationality: map['nationality'] as String,
      language: map['language'] as String,
      capital: map['capital'] as String,
      nationalSport: map['national_sport'] as String,
      flag: map['flag'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory RandomNation.fromJson(String source) =>
      RandomNation.fromMap(json.decode(source) as Map<String, dynamic>);
}
