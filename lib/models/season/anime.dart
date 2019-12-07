import 'dart:convert';

import 'package:anipocket/models/models.dart';
import 'package:anipocket/models/source.dart';
import 'package:anipocket/models/type.dart';

class Anime {
    int malId;
    String url;
    String title;
    String imageUrl;
    String synopsis;
    Type type;
    DateTime airingStart;
    int episodes;
    int members;
    List<Genre> genres;
    Source source;
    List<Genre> producers;
    double score;
    List<String> licensors;
    bool r18;
    bool kids;
    bool continuing;

    Anime({
        this.malId,
        this.url,
        this.title,
        this.imageUrl,
        this.synopsis,
        this.type,
        this.airingStart,
        this.episodes,
        this.members,
        this.genres,
        this.source,
        this.producers,
        this.score,
        this.licensors,
        this.r18,
        this.kids,
        this.continuing,
    });

    factory Anime.fromRawJson(String str) => Anime.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Anime.fromJson(Map<String, dynamic> json) => Anime(
        malId: json["mal_id"],
        url: json["url"],
        title: json["title"],
        imageUrl: json["image_url"],
        synopsis: json["synopsis"],
        type: typeValues.map[json["type"]],
        airingStart: DateTime.parse(json["airing_start"]),
        episodes: json["episodes"] == null ? null : json["episodes"],
        members: json["members"],
        genres: List<Genre>.from(json["genres"].map((x) => Genre.fromJson(x))),
        source: sourceValues.map[json["source"]],
        producers: List<Genre>.from(json["producers"].map((x) => Genre.fromJson(x))),
        score: json["score"] == null ? null : json["score"].toDouble(),
        licensors: List<String>.from(json["licensors"].map((x) => x)),
        r18: json["r18"],
        kids: json["kids"],
        continuing: json["continuing"],
    );

    Map<String, dynamic> toJson() => {
        "mal_id": malId,
        "url": url,
        "title": title,
        "image_url": imageUrl,
        "synopsis": synopsis,
        "type": typeValues.reverse[type],
        "airing_start": airingStart.toIso8601String(),
        "episodes": episodes == null ? null : episodes,
        "members": members,
        "genres": List<dynamic>.from(genres.map((x) => x.toJson())),
        "source": sourceValues.reverse[source],
        "producers": List<dynamic>.from(producers.map((x) => x.toJson())),
        "score": score == null ? null : score,
        "licensors": List<dynamic>.from(licensors.map((x) => x)),
        "r18": r18,
        "kids": kids,
        "continuing": continuing,
    };
}

