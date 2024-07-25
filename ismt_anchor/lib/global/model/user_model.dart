import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserModel {
  final int id;
  final String name;
  final String email;
  final String mobile;
  final String course;
  final String section;
  final String semester;
final String username;
final int attendance;
final String address;
  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.mobile,
    required this.course,
    required this.section,
    required this.semester,
    required this.username,
    required this.address,
    required this.attendance,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'mobile': mobile,
      'course': course,
      'section': section,
      'semester': semester,
      'username': username,
      'address': address,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as int,
      attendance: map['attendance'] as int,
      name: map['name'] as String,
      email: map['email'] as String,
      mobile: map['mobile'] as String,
      course: map['course'] as String,
      section: map['section'] as String,
      semester: map['semester'] as String,
      username: map['username'] as String,
      address: map['address'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
