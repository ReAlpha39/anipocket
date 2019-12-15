import 'dart:convert';

import 'package:anipocket/models/search/rated.dart';
import 'package:anipocket/models/type.dart';

class ResultAnime {
    int malId;
    String url;
    String imageUrl;
    String title;
    bool airing;
    String synopsis;
    Type type;
    int episodes;
    double score;
    DateTime startDate;
    DateTime endDate;
    int members;
    Rated rated;

    ResultAnime({
        this.malId,
        this.url,
        this.imageUrl,
        this.title,
        this.airing,
        this.synopsis,
        this.type,
        this.episodes,
        this.score,
        this.startDate,
        this.endDate,
        this.members,
        this.rated,
    });

    factory ResultAnime.fromRawJson(String str) => ResultAnime.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ResultAnime.fromJson(Map<String, dynamic> json) => ResultAnime(
        malId: json["mal_id"] == null ? null : json["mal_id"],
        url: json["url"] == null ? null : json["url"],
        imageUrl: json["image_url"] == null ? null : json["image_url"],
        title: json["title"] == null ? null : json["title"],
        airing: json["airing"] == null ? null : json["airing"],
        synopsis: json["synopsis"] == null ? null : json["synopsis"],
        type: json["type"] == null ? null : typeValues.map[json["type"]],
        episodes: json["episodes"] == null ? null : json["episodes"],
        score: json["score"] == null ? null : json["score"].toDouble(),
        startDate: json["start_date"] == null ? null : DateTime.parse(json["start_date"]),
        endDate: json["end_date"] == null ? null : DateTime.parse(json["end_date"]),
        members: json["members"] == null ? null : json["members"],
        rated: json["rated"] == null ? null : ratedValues.map[json["rated"]],
    );

    Map<String, dynamic> toJson() => {
        "mal_id": malId == null ? null : malId,
        "url": url == null ? null : url,
        "image_url": imageUrl == null ? null : imageUrl,
        "title": title == null ? null : title,
        "airing": airing == null ? null : airing,
        "synopsis": synopsis == null ? null : synopsis,
        "type": type == null ? null : typeValues.reverse[type],
        "episodes": episodes == null ? null : episodes,
        "score": score == null ? null : score,
        "start_date": startDate == null ? null : startDate.toIso8601String(),
        "end_date": endDate == null ? null : endDate.toIso8601String(),
        "members": members == null ? null : members,
        "rated": rated == null ? null : ratedValues.reverse[rated],
    };
}