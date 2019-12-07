import 'dart:convert';

import 'package:anipocket/models/type.dart';

class Producer {
    int malId;
    Type type;
    String name;
    String url;

    Producer({
        this.malId,
        this.type,
        this.name,
        this.url,
    });

    factory Producer.fromRawJson(String str) => Producer.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Producer.fromJson(Map<String, dynamic> json) => Producer(
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