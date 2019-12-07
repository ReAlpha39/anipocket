import 'dart:convert';

import 'package:anipocket/models/season/anime.dart';

class SeasonAnime {
    String seasonName;
    int seasonYear;
    List<Anime> anime;

    SeasonAnime({
        this.seasonName,
        this.seasonYear,
        this.anime,
    });

    factory SeasonAnime.fromRawJson(String str) => SeasonAnime.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory SeasonAnime.fromJson(Map<String, dynamic> json) => SeasonAnime(
        seasonName: json["season_name"] == null ? null : json["season_name"],
        seasonYear: json["season_year"] == null ? null : json["season_year"],
        anime: json["anime"] == null ? null : List<Anime>.from(json["anime"].map((x) => Anime.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "season_name": seasonName == null ? null : seasonName,
        "season_year": seasonYear == null ? null : seasonYear,
        "anime": anime == null ? null : List<dynamic>.from(anime.map((x) => x.toJson())),
    };
}
