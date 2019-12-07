import 'dart:convert';

import 'package:anipocket/models/models.dart';

class AnimeRecommendations {
    List<Recommendation> recommendations;

    AnimeRecommendations({
        this.recommendations,
    });

    factory AnimeRecommendations.fromRawJson(String str) => AnimeRecommendations.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory AnimeRecommendations.fromJson(Map<String, dynamic> json) => AnimeRecommendations(
        recommendations: json["recommendations"] == null ? null : List<Recommendation>.from(json["recommendations"].map((x) => Recommendation.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "recommendations": recommendations == null ? null : List<dynamic>.from(recommendations.map((x) => x.toJson())),
    };
}
