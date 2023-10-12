import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Book {
  String? id;
  String? name;
  String? age;
  String? attachment;
  String? publisher;
  num? rate;
  num? price;
  num? createdAt;
  num? updatedAt;

  Book({
    this.id,
    this.name,
    this.age,
    this.attachment,
    this.publisher,
    this.rate,
    this.price,
    this.createdAt,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '_id': id,
      'name': name,
      'age': age,
      'attachment': attachment,
      'publisher': publisher,
      'rate': rate,
      'price': price,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  factory Book.fromMap(Map<dynamic, dynamic> map) {
    return Book(
      id: map['_id'] != null ? map['_id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      age: map['age'] != null ? map['age'] as String : null,
      attachment:
          map['attachment'] != null ? map['attachment'] as String : null,
      publisher: map['publisher'] != null ? map['publisher'] as String : null,
      rate: map['rate'] != null ? map['rate'] as num : null,
      price: map['price'] != null ? map['price'] as num : null,
      createdAt: map['createdAt'] != null ? map['createdAt'] as num : null,
      updatedAt: map['updatedAt'] != null ? map['updatedAt'] as num : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Book.fromJson(String source) =>
      Book.fromMap(json.decode(source) as Map<String, dynamic>);
}
