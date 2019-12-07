import 'dart:convert';

import 'package:anipocket/models/models.dart';

class AnimeNews {
    List<Article> articles;

    AnimeNews({
        this.articles,
    });

    factory AnimeNews.fromRawJson(String str) => AnimeNews.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory AnimeNews.fromJson(Map<String, dynamic> json) => AnimeNews(
        articles: json["articles"] == null ? null : List<Article>.from(json["articles"].map((x) => Article.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "articles": articles == null ? null : List<dynamic>.from(articles.map((x) => x.toJson())),
    };
}
