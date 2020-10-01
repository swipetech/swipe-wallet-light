// To parse this JSON data, do
//
//     final bankAccountModel = bankAccountModelFromJson(jsonString);

import 'dart:convert';

BankAccountModel bankAccountModelFromJson(String str) => BankAccountModel.fromJson(json.decode(str));

String bankAccountModelToJson(BankAccountModel data) => json.encode(data.toJson());

class BankAccountModel {
  BankAccountModel({
    this.bankCode,
    this.bankAgency,
    this.bankAgencyDigit,
    this.bankAccount,
    this.bankAccountDigit,
    this.name,
    this.document,
  });

  String bankCode;
  String bankAgency;
  String bankAgencyDigit;
  String bankAccount;
  String bankAccountDigit;
  String name;
  String document;

  factory BankAccountModel.fromJson(Map<String, dynamic> json) => BankAccountModel(
    bankCode: json["bankCode"] == null ? null : json["bankCode"],
    bankAgency: json["bankAgency"] == null ? null : json["bankAgency"],
    bankAgencyDigit: json["bankAgencyDigit"] == null ? null : json["bankAgencyDigit"],
    bankAccount: json["bankAccount"] == null ? null : json["bankAccount"],
    bankAccountDigit: json["bankAccountDigit"] == null ? null : json["bankAccountDigit"],
    name: json["name"] == null ? null : json["name"],
    document: json["document"] == null ? null : json["document"],
  );

  Map<String, dynamic> toJson() => {
    "bankCode": bankCode == null ? null : bankCode,
    "bankAgency": bankAgency == null ? null : bankAgency,
    "bankAgencyDigit": bankAgencyDigit == null ? null : bankAgencyDigit,
    "bankAccount": bankAccount == null ? null : bankAccount,
    "bankAccountDigit": bankAccountDigit == null ? null : bankAccountDigit,
    "name": name == null ? null : name,
    "document": document == null ? null : document,
  };
}
