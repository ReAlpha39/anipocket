import 'dart:convert';

import 'package:anipocket/models/type.dart';

class ResultManga {
    int malId;
    String url;
    String imageUrl;
    String title;
    bool publishing;
    String synopsis;
    Type type;
    int chapters;
    int volumes;
    double score;
    DateTime startDate;
    DateTime endDate;
    int members;

    ResultManga({
        this.malId,
        this.url,
        this.imageUrl,
        this.title,
        this.publishing,
        this.synopsis,
        this.type,
        this.chapters,
        this.volumes,
        this.score,
        this.startDate,
        this.endDate,
        this.members,
    });

    factory ResultManga.fromRawJson(String str) => ResultManga.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ResultManga.fromJson(Map<String, dynamic> json) => ResultManga(
        malId: json["mal_id"] == null ? null : json["mal_id"],
        url: json["url"] == null ? null : json["url"],
        imageUrl: json["image_url"] == null ? null : json["image_url"],
        title: json["title"] == null ? null : json["title"],
        publishing: json["publishing"] == null ? null : json["publishing"],
        synopsis: json["synopsis"] == null ? null : json["synopsis"],
        type: json["type"] == null ? null : typeValues.map[json["type"]],
        chapters: json["chapters"] == null ? null : json["chapters"],
        volumes: json["volumes"] == null ? null : json["volumes"],
        score: json["score"] == null ? null : json["score"].toDouble(),
        startDate: json["start_date"] == null ? null : DateTime.parse(json["start_date"]),
        endDate: json["end_date"] == null ? null : DateTime.parse(json["end_date"]),
        members: json["members"] == null ? null : json["members"],
    );

    Map<String, dynamic> toJson() => {
        "mal_id": malId == null ? null : malId,
        "url": url == null ? null : url,
        "image_url": imageUrl == null ? null : imageUrl,
        "title": title == null ? null : title,
        "publishing": publishing == null ? null : publishing,
        "synopsis": synopsis == null ? null : synopsis,
        "type": type == null ? null : typeValues.reverse[type],
        "chapters": chapters == null ? null : chapters,
        "volumes": volumes == null ? null : volumes,
        "score": score == null ? null : score,
        "start_date": startDate == null ? null : startDate.toIso8601String(),
        "end_date": endDate == null ? null : endDate.toIso8601String(),
        "members": members == null ? null : members,
    };
}