import 'dart:convert';

import 'package:anipocket/models/models.dart';

class Videos {
    List<Promo> promo;
    List<Episode> episodes;

    Videos({
        this.promo,
        this.episodes,
    });

    factory Videos.fromRawJson(String str) => Videos.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Videos.fromJson(Map<String, dynamic> json) => Videos(
         promo: json["promo"] == null ? null : List<Promo>.from(json["promo"].map((x) => Promo.fromJson(x))),
        episodes: json["episodes"] == null ? null : List<Episode>.from(json["episodes"].map((x) => Episode.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "promo": promo == null ? null : List<dynamic>.from(promo.map((x) => x.toJson())),
        "episodes": episodes == null ? null : List<dynamic>.from(episodes.map((x) => x.toJson())),
    };
}
