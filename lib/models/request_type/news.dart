import 'dart:convert';

import 'package:anipocket/models/models.dart';

class News {
    List<Article> articles;

    News({
        this.articles,
    });

    factory News.fromRawJson(String str) => News.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory News.fromJson(Map<String, dynamic> json) => News(
        articles: json["articles"] == null ? null : List<Article>.from(json["articles"].map((x) => Article.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "articles": articles == null ? null : List<dynamic>.from(articles.map((x) => x.toJson())),
    };
}
