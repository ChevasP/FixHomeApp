// To parse this JSON data, do
//
//     final servicio = servicioFromJson(jsonString);

import 'dart:convert';

Servicio servicioFromJson(String str) => Servicio.fromJson(json.decode(str));

String servicioToJson(Servicio data) => json.encode(data.toJson());

class Servicio {
  Servicio({
    this.actualLocation,
    this.timeArrive,
    this.reviewService,
    this.serviceScore,
  });

  String? actualLocation;
  DateTime? timeArrive;
  String? reviewService;
  int? serviceScore;

  factory Servicio.fromJson(Map<String, dynamic> json) => Servicio(
        actualLocation: json["actual_location"],
        timeArrive: json["time_arrive"],
        reviewService: json["review_service"],
        serviceScore: json["service_score"],
      );

  Map<String, dynamic> toJson() => {
        "actual_location": actualLocation,
        "time_arrive": timeArrive,
        "review_service": reviewService,
        "service_score": serviceScore,
      };
}
