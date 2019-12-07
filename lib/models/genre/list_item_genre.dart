import 'dart:convert';

import 'package:anipocket/models/models.dart';
import 'package:anipocket/models/season/anime.dart';

class ListItemGenre {
    Genre malUrl;
    int itemCount;
    List<Anime> anime;

    ListItemGenre({
        this.malUrl,
        this.itemCount,
        this.anime,
    });

    factory ListItemGenre.fromRawJson(String str) => ListItemGenre.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ListItemGenre.fromJson(Map<String, dynamic> json) => ListItemGenre(
        malUrl: json["mal_url"] == null ? null : Genre.fromJson(json["mal_url"]),
        itemCount: json["item_count"] == null ? null : json["item_count"],
        anime: json["anime"] == null ? null : List<Anime>.from(json["anime"].map((x) => Anime.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "mal_url": malUrl == null ? null : malUrl.toJson(),
        "item_count": itemCount == null ? null : itemCount,
        "anime": anime == null ? null : List<dynamic>.from(anime.map((x) => x.toJson())),
    };
}