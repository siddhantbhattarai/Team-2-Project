import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class NewsModel {
  final String image;
  final String title;
  final String description;
  final String date;
  NewsModel({
    required this.image,
    required this.title,
    required this.description,
    required this.date,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'title': title,
      'description': description,
      'date': date,
    };
  }

  factory NewsModel.fromMap(Map<String, dynamic> map) {
    return NewsModel(
      image: map['image'] as String,
      title: map['title'] as String,
      description: map['description'] as String,
      date: map['date'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory NewsModel.fromJson(String source) => NewsModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

