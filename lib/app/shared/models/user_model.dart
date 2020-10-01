// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

import 'package:swipe_app/app/shared/models/bank_account_model.dart';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({this.id, this.name, this.email, this.fullName, this.bank});

  final String id;
  final String name;
  final String email;
  final String fullName;
  final BankAccountModel bank;

  UserModel copyWith(
          {String id,
          String name,
          String email,
          String fullName,
          BankAccountModel bank}) =>
      UserModel(
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
        fullName: fullName ?? this.fullName,
        bank: bank ?? this.bank,
      );

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        email: json["email"] == null ? null : json["email"],
        fullName: json["fullName"] == null ? null : json["fullName"],
        bank: json["bankAccountModel"] == null
            ? null
            : BankAccountModel.fromJson(json["bankAccountModel"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "email": email == null ? null : email,
        "fullName": fullName == null ? null : fullName,
        "bank": bank == null ? null : bank.toJson(),
      };
}
