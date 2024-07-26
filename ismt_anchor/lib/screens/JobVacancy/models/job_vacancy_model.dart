import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class JobVacancyModel {
  final String post;
  final String description;
  final String issueDate;
  final String applyLink;
  JobVacancyModel({
    required this.post,
    required this.description,
    required this.issueDate,
    required this.applyLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'post': post,
      'description': description,
      'issueDate': issueDate,
      'applyLink': applyLink,
    };
  }

  factory JobVacancyModel.fromMap(Map<String, dynamic> map) {
    return JobVacancyModel(
      post: map['post'] as String,
      description: map['description'] as String,
      issueDate: map['issueDate'] as String,
      applyLink: map['applyLink'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory JobVacancyModel.fromJson(String source) => JobVacancyModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
