import 'dart:convert';

class UserModel {
  final int id;
  final String name;
  final String summary;
  final String balance;
  final String cashWithDrawn;
  final String atmLocation;
  final DateTime withdrawndate;

  UserModel(
      {required this.id,
      required this.name,
      required this.summary,
      required this.balance,
      required this.cashWithDrawn,
      required this.atmLocation,
      required this.withdrawndate});
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        id: json['id'],
        name: json['name'],
        summary: json['summary'],
        balance: json['balance'],
        cashWithDrawn: json['cashWithDrawn'],
        atmLocation: json['atmLocation'],
        withdrawndate: json['withdrawndate']);
  }
}
