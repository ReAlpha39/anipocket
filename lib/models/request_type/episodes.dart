import 'dart:convert';

import 'package:anipocket/models/models.dart';

class Episodes {
  int episodesLastPage;
  List<Episode> episodes;

  Episodes({
      this.episodesLastPage,
      this.episodes,
  });

  factory Episodes.fromRawJson(String str) => Episodes.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Episodes.fromJson(Map<String, dynamic> json) => Episodes(
      episodesLastPage: json["episodes_last_page"] == null ? null : json["episodes_last_page"],
      episodes: json["episodes"] == null ? null : List<Episode>.from(json["episodes"].map((x) => Episode.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
      "episodes_last_page": episodesLastPage == null ? null : episodesLastPage,
      "episodes": episodes == null ? null : List<dynamic>.from(episodes.map((x) => x.toJson())),
  };
}


