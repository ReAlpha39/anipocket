import 'dart:convert';

class Article {
    String url;
    String title;
    DateTime date;
    String authorName;
    String authorUrl;
    String forumUrl;
    String imageUrl;
    int comments;
    String intro;

    Article({
        this.url,
        this.title,
        this.date,
        this.authorName,
        this.authorUrl,
        this.forumUrl,
        this.imageUrl,
        this.comments,
        this.intro,
    });

    factory Article.fromRawJson(String str) => Article.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Article.fromJson(Map<String, dynamic> json) => Article(
        url: json["url"] == null ? null : json["url"],
        title: json["title"] == null ? null : json["title"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        authorName: json["author_name"] == null ? null : json["author_name"],
        authorUrl: json["author_url"] == null ? null : json["author_url"],
        forumUrl: json["forum_url"] == null ? null : json["forum_url"],
        imageUrl: json["image_url"] == null ? null : json["image_url"],
        comments: json["comments"] == null ? null : json["comments"],
        intro: json["intro"] == null ? null : json["intro"],
    );

    Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "title": title == null ? null : title,
        "date": date == null ? null : date.toIso8601String(),
        "author_name": authorName == null ? null : authorName,
        "author_url": authorUrl == null ? null : authorUrl,
        "forum_url": forumUrl == null ? null : forumUrl,
        "image_url": imageUrl == null ? null : imageUrl,
        "comments": comments == null ? null : comments,
        "intro": intro == null ? null : intro,
    };
}