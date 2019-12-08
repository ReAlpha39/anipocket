import 'dart:convert';

import 'package:anipocket/models/models.dart';

class MangaInfo {
    int malId;
    String url;
    String title;
    String titleEnglish;
    List<String> titleSynonyms;
    String titleJapanese;
    String status;
    String imageUrl;
    String type;
    dynamic volumes;
    dynamic chapters;
    bool publishing;
    Aired published;
    int rank;
    double score;
    int scoredBy;
    int popularity;
    int members;
    int favorites;
    String synopsis;
    String background;
    Related related;
    List<Producer> genres;
    List<Producer> authors;
    List<Producer> serializations;

    MangaInfo({
        this.malId,
        this.url,
        this.title,
        this.titleEnglish,
        this.titleSynonyms,
        this.titleJapanese,
        this.status,
        this.imageUrl,
        this.type,
        this.volumes,
        this.chapters,
        this.publishing,
        this.published,
        this.rank,
        this.score,
        this.scoredBy,
        this.popularity,
        this.members,
        this.favorites,
        this.synopsis,
        this.background,
        this.related,
        this.genres,
        this.authors,
        this.serializations,
    });

    factory MangaInfo.fromRawJson(String str) => MangaInfo.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory MangaInfo.fromJson(Map<String, dynamic> json) => MangaInfo(
        malId: json["mal_id"] == null ? null : json["mal_id"],
        url: json["url"] == null ? null : json["url"],
        title: json["title"] == null ? null : json["title"],
        titleEnglish: json["title_english"] == null ? null : json["title_english"],
        titleSynonyms: json["title_synonyms"] == null ? null : List<String>.from(json["title_synonyms"].map((x) => x)),
        titleJapanese: json["title_japanese"] == null ? null : json["title_japanese"],
        status: json["status"] == null ? null : json["status"],
        imageUrl: json["image_url"] == null ? null : json["image_url"],
        type: json["type"] == null ? null : json["type"],
        volumes: json["volumes"] == null ? null : json["volumes"],
        chapters: json["chapters"] == null ? null : json["chapters"],
        publishing: json["publishing"] == null ? null : json["publishing"],
        published: json["published"] == null ? null : Aired.fromJson(json["published"]),
        rank: json["rank"] == null ? null : json["rank"],
        score: json["score"] == null ? null : json["score"].toDouble(),
        scoredBy: json["scored_by"] == null ? null : json["scored_by"],
        popularity: json["popularity"] == null ? null : json["popularity"],
        members: json["members"] == null ? null : json["members"],
        favorites: json["favorites"] == null ? null : json["favorites"],
        synopsis: json["synopsis"] == null ? null : json["synopsis"],
        background: json["background"] == null ? null : json["background"],
        related: json["related"] == null ? null : Related.fromJson(json["related"]),
        genres: json["genres"] == null ? null : List<Producer>.from(json["genres"].map((x) => Producer.fromJson(x))),
        authors: json["authors"] == null ? null : List<Producer>.from(json["authors"].map((x) => Producer.fromJson(x))),
        serializations: json["serializations"] == null ? null : List<Producer>.from(json["serializations"].map((x) => Producer.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "mal_id": malId == null ? null : malId,
        "url": url == null ? null : url,
        "title": title == null ? null : title,
        "title_english": titleEnglish == null ? null : titleEnglish,
        "title_synonyms": titleSynonyms == null ? null : List<dynamic>.from(titleSynonyms.map((x) => x)),
        "title_japanese": titleJapanese == null ? null : titleJapanese,
        "status": status == null ? null : status,
        "image_url": imageUrl == null ? null : imageUrl,
        "type": type == null ? null : type,
        "volumes": volumes == null ? null : volumes,
        "chapters": chapters == null ? null : chapters,
        "publishing": publishing == null ? null : publishing,
        "published": published == null ? null : published.toJson(),
        "rank": rank == null ? null : rank,
        "score": score == null ? null : score,
        "scored_by": scoredBy == null ? null : scoredBy,
        "popularity": popularity == null ? null : popularity,
        "members": members == null ? null : members,
        "favorites": favorites == null ? null : favorites,
        "synopsis": synopsis == null ? null : synopsis,
        "background": background == null ? null : background,
        "related": related == null ? null : related.toJson(),
        "genres": genres == null ? null : List<dynamic>.from(genres.map((x) => x.toJson())),
        "authors": authors == null ? null : List<dynamic>.from(authors.map((x) => x.toJson())),
        "serializations": serializations == null ? null : List<dynamic>.from(serializations.map((x) => x.toJson())),
    };
}
