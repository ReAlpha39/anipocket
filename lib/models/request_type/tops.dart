import 'dart:convert';

import 'package:anipocket/models/models.dart';

class Tops {
    List<Top> top;

    Tops({
        this.top,
    });

    factory Tops.fromRawJson(String str) => Tops.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Tops.fromJson(Map<String, dynamic> json) => Tops(
        top: json["top"] == null ? null : List<Top>.from(json["top"].map((x) => Top.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "top": top == null ? null : List<dynamic>.from(top.map((x) => x.toJson())),
    };
}


