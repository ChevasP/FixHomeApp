// To parse this JSON data, do
//
//     final establish = establishFromMap(jsonString);

import 'dart:convert';

Establish establishFromMap(String str) => Establish.fromJson(json.decode(str));

String establishToMap(Establish data) => json.encode(data.toMap());

class Establish {
  Establish({
    this.idEstablecimiento,
    this.name,
    this.description,
    this.quealification,
    this.ownerName,
    this.contactOwner,
  });

  String? idEstablecimiento;
  String? name;
  String? description;
  int? quealification;
  String? ownerName;
  String? contactOwner;

  factory Establish.fromJson(Map<String, dynamic> json) => Establish(
        idEstablecimiento: json["idEstablecimiento"],
        name: json["name"],
        description: json["description"],
        quealification: json["quealification"],
        ownerName: json["ownerName"],
        contactOwner: json["contactOwner"],
      );

  Map<String, dynamic> toMap() => {
        "idEstablecimiento": idEstablecimiento,
        "name": name,
        "description": description,
        "quealification": quealification,
        "ownerName": ownerName,
        "contactOwner": contactOwner,
      };
}
