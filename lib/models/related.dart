import 'dart:convert';

import 'package:anipocket/models/models.dart';

class Related {
    List<Genre> adaptation;
    List<Genre> alternativeVersion;
    List<Genre> sideStory;

    Related({
        this.adaptation,
        this.alternativeVersion,
        this.sideStory,
    });

    factory Related.fromRawJson(String str) => Related.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Related.fromJson(Map<String, dynamic> json) => Related(
        adaptation: json["Adaptation"] == null ? null : List<Genre>.from(json["Adaptation"].map((x) => Genre.fromJson(x))),
        alternativeVersion: json["Alternative version"] == null ? null : List<Genre>.from(json["Alternative version"].map((x) => Genre.fromJson(x))),
        sideStory: json["Side story"] == null ? null : List<Genre>.from(json["Side story"].map((x) => Genre.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "Adaptation": adaptation == null ? null : List<dynamic>.from(adaptation.map((x) => x.toJson())),
        "Alternative version": alternativeVersion == null ? null : List<dynamic>.from(alternativeVersion.map((x) => x.toJson())),
        "Side story": sideStory == null ? null : List<dynamic>.from(sideStory.map((x) => x.toJson())),
    };
}