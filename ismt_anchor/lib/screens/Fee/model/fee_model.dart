import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class FeeModel {
  final int feeid;
  final int total;
  final int paid;
  final String nextPayment;
  final String nextPaymentDate;
  FeeModel({
    required this.feeid,
    required this.total,
    required this.paid,
    required this.nextPayment,
    required this.nextPaymentDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'feeid': feeid,
      'total': total,
      'paid': paid,
      'nextPayment': nextPayment,
      'nextPaymentDate': nextPaymentDate,
    };
  }

  factory FeeModel.fromMap(Map<String, dynamic> map) {
    return FeeModel(
      feeid: map['feeid'] as int,
      total: map['total'] as int,
      paid: map['paid'] as int,
      nextPayment: map['nextPayment'] as String,
      nextPaymentDate: map['nextPaymentDate'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory FeeModel.fromJson(String source) => FeeModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
