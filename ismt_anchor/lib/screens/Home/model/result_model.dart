import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ResultModel {
final String resultphoto;
final String semester;
final String passfail;
  ResultModel({
    required this.resultphoto,
    required this.semester,
    required this.passfail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resultphoto': resultphoto,
      'semester': semester,
      'passfail': passfail,
    };
  }

  factory ResultModel.fromMap(Map<String, dynamic> map) {
    return ResultModel(
      resultphoto: map['resultphoto'] as String,
      semester: map['semester'] as String,
      passfail: map['passfail'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ResultModel.fromJson(String source) => ResultModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
