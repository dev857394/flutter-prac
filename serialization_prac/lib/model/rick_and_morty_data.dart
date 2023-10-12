import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class RickAndMortyData {
  int? id;
  String? name;
  String? type;
  String? dimension;
  List<String>? residents;
  String? url;
  String? created;

  RickAndMortyData({
    this.id,
    this.name,
    this.type,
    this.dimension,
    this.residents,
    this.url,
    this.created,
  });

  // Map<String, dynamic> toMap() {
  //   return <String, dynamic>{
  //     'id': id,
  //     'name': name,
  //     'type': type,
  //     'dimension': dimension,
  //     'residents': residents,
  //     'url': url,
  //     'created': created,
  //   };
  // }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'type': type,
      'dimension': dimension,
      'residents': residents,
      'url': url,
      'created': created,
    };
  }

  factory RickAndMortyData.fromMap(Map<String, dynamic> map) {
    return RickAndMortyData(
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] != null ? map['name'] as String : null,
      type: map['type'] != null ? map['type'] as String : null,
      dimension: map['dimension'] != null ? map['dimension'] as String : null,
      residents: map['residents'] != null
          ? List<String>.from((map['residents'] as List<dynamic>))
          : null,
      url: map['url'] != null ? map['url'] as String : null,
      created: map['created'] != null ? map['created'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory RickAndMortyData.fromJson(String source) =>
      RickAndMortyData.fromMap(json.decode(source) as Map<String, dynamic>);
}
