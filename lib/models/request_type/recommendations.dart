import 'dart:convert';

import 'package:anipocket/models/models.dart';

class Recommendations {
    List<Recommendation> recommendations;

    Recommendations({
        this.recommendations,
    });

    factory Recommendations.fromRawJson(String str) => Recommendations.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Recommendations.fromJson(Map<String, dynamic> json) => Recommendations(
        recommendations: json["recommendations"] == null ? null : List<Recommendation>.from(json["recommendations"].map((x) => Recommendation.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "recommendations": recommendations == null ? null : List<dynamic>.from(recommendations.map((x) => x.toJson())),
    };
}
