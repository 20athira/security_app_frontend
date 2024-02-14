// To parse this JSON data, do
//
//     final visitor = visitorFromJson(jsonString);

import 'dart:convert';

List<Visitor> visitorFromJson(String str) => List<Visitor>.from(json.decode(str).map((x) => Visitor.fromJson(x)));

String visitorToJson(List<Visitor> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Visitor {
  String name;
  String purpose;
  String phoneno;
  String address;

  Visitor({
    required this.name,
    required this.purpose,
    required this.phoneno,
    required this.address,
  });

  factory Visitor.fromJson(Map<String, dynamic> json) => Visitor(
    name: json["name"],
    purpose: json["purpose"],
    phoneno: json["phoneno"],
    address: json["address"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "purpose": purpose,
    "phoneno": phoneno,
    "address": address,
  };
}
