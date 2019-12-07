import 'dart:convert';

import 'package:anipocket/models/season/season_type.dart';

class Archive {
    int year;
    List<SeasonType> seasons;

    Archive({
        this.year,
        this.seasons,
    });

    factory Archive.fromRawJson(String str) => Archive.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Archive.fromJson(Map<String, dynamic> json) => Archive(
        year: json["year"] == null ? null : json["year"],
        seasons: json["seasons"] == null ? null : List<SeasonType>.from(json["seasons"].map((x) => seasonTypeValues.map[x])),
    );

    Map<String, dynamic> toJson() => {
        "year": year == null ? null : year,
        "seasons": seasons == null ? null : List<dynamic>.from(seasons.map((x) => seasonTypeValues.reverse[x])),
    };
}