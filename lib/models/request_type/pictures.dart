// To parse this JSON data, do
//
//     final pictures = picturesFromJson(jsonString);

import 'dart:convert';

import 'package:anipocket/models/models.dart';

class AnimePictures {
    List<Picture> pictures;

    AnimePictures({
        this.pictures,
    });

    factory AnimePictures.fromRawJson(String str) => AnimePictures.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory AnimePictures.fromJson(Map<String, dynamic> json) => AnimePictures(
        pictures: json["pictures"] == null ? null : List<Picture>.from(json["pictures"].map((x) => Picture.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "pictures": pictures == null ? null : List<dynamic>.from(pictures.map((x) => x.toJson())),
    };
}


