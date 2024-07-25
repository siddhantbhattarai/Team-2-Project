import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class TutorialModel {
  final String link;
  final String course;
  final String subject;
  final String title;
  final String semester;
  TutorialModel({
    required this.link,
    required this.course,
    required this.subject,
    required this.title,
    required this.semester,
  });
  

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'link': link,
      'course': course,
      'subject': subject,
      'title': title,
      'semester': semester,
    };
  }

  factory TutorialModel.fromMap(Map<String, dynamic> map) {
    return TutorialModel(
      link: map['link'] as String,
      course: map['course'] as String,
      subject: map['subject'] as String,
      title: map['title'] as String,
      semester: map['semester'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory TutorialModel.fromJson(String source) => TutorialModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
