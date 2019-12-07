import 'dart:convert';

import 'package:anipocket/models/type.dart';

class Genre {
    int malId;
    Type type;
    String name;
    String url;

    Genre({
        this.malId,
        this.type,
        this.name,
        this.url,
    });

    factory Genre.fromRawJson(String str) => Genre.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Genre.fromJson(Map<String, dynamic> json) => Genre(
        malId: json["mal_id"] == null ? null : json["mal_id"],
        type: json["type"] == null ? null : typeValues.map[json["type"]],
        name: json["name"] == null ? null : json["name"],
        url: json["url"] == null ? null : json["url"],
    );

    Map<String, dynamic> toJson() => {
        "mal_id": malId == null ? null : malId,
        "type": type == null ? null : typeValues.reverse[type],
        "name": name == null ? null : name,
        "url": url == null ? null : url,
    };
}