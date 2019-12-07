import 'dart:convert';

import 'package:anipocket/models/season/anime.dart';

class SeasonLater {
    String seasonName;
    dynamic seasonYear;
    List<Anime> anime;

    SeasonLater({
        this.seasonName,
        this.seasonYear,
        this.anime,
    });

    factory SeasonLater.fromRawJson(String str) => SeasonLater.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory SeasonLater.fromJson(Map<String, dynamic> json) => SeasonLater(
        seasonName: json["season_name"] == null ? null : json["season_name"],
        seasonYear: json["season_year"]== null ? null : json["season_year"],
        anime: json["anime"] == null ? null : List<Anime>.from(json["anime"].map((x) => Anime.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "season_name": seasonName == null ? null : seasonName,
        "season_year": seasonYear == null ? null : seasonName,
        "anime": anime == null ? null : List<dynamic>.from(anime.map((x) => x.toJson())),
    };
}
