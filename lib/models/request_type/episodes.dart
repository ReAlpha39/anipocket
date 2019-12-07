import 'dart:convert';

import 'package:anipocket/models/models.dart';

class AnimeEpisodes {
  int episodesLastPage;
  List<Episode> episodes;

  AnimeEpisodes({
      this.episodesLastPage,
      this.episodes,
  });

  factory AnimeEpisodes.fromRawJson(String str) => AnimeEpisodes.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AnimeEpisodes.fromJson(Map<String, dynamic> json) => AnimeEpisodes(
      episodesLastPage: json["episodes_last_page"] == null ? null : json["episodes_last_page"],
      episodes: json["episodes"] == null ? null : List<Episode>.from(json["episodes"].map((x) => Episode.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
      "episodes_last_page": episodesLastPage == null ? null : episodesLastPage,
      "episodes": episodes == null ? null : List<dynamic>.from(episodes.map((x) => x.toJson())),
  };
}


