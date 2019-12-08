// To parse this JSON data, do
//
//     final pictures = picturesFromJson(jsonString);

import 'dart:convert';

import 'package:anipocket/models/models.dart';

class Pictures {
    List<Picture> pictures;

    Pictures({
        this.pictures,
    });

    factory Pictures.fromRawJson(String str) => Pictures.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Pictures.fromJson(Map<String, dynamic> json) => Pictures(
        pictures: json["pictures"] == null ? null : List<Picture>.from(json["pictures"].map((x) => Picture.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "pictures": pictures == null ? null : List<dynamic>.from(pictures.map((x) => x.toJson())),
    };
}


