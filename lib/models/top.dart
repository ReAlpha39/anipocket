import 'dart:convert';

import 'package:anipocket/models/type.dart';

class Top {
    int malId;
    int rank;
    String title;
    String url;
    String imageUrl;
    Type type;
    int volumes;
    int episodes;
    String startDate;
    String endDate;
    int members;
    double score;

    Top({
        this.malId,
        this.rank,
        this.title,
        this.url,
        this.imageUrl,
        this.type,
        this.volumes,
        this.episodes,
        this.startDate,
        this.endDate,
        this.members,
        this.score,
    });

    factory Top.fromRawJson(String str) => Top.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Top.fromJson(Map<String, dynamic> json) => Top(
        malId: json["mal_id"] == null ? null : json["mal_id"],
        rank: json["rank"] == null ? null : json["rank"],
        title: json["title"] == null ? null : json["title"],
        url: json["url"] == null ? null : json["url"],
        imageUrl: json["image_url"] == null ? null : json["image_url"],
        type: json["type"] == null ? null : typeValues.map[json["type"]],
        volumes: json["volumes"] == null ? null : json["volumes"],
        episodes: json["episodes"] == null ? null : json["episodes"],
        startDate: json["start_date"] == null ? null : json["start_date"],
        endDate: json["end_date"] == null ? null : json["end_date"],
        members: json["members"] == null ? null : json["members"],
        score: json["score"] == null ? null : json["score"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "mal_id": malId == null ? null : malId,
        "rank": rank == null ? null : rank,
        "title": title == null ? null : title,
        "url": url == null ? null : url,
        "image_url": imageUrl == null ? null : imageUrl,
        "type": type == null ? null : typeValues.reverse[type],
        "volumes": volumes == null ? null : volumes,
        "episodes": episodes == null ? null : episodes,
        "start_date": startDate == null ? null : startDate,
        "end_date": endDate == null ? null : endDate,
        "members": members == null ? null : members,
        "score": score == null ? null : score,
    };
}