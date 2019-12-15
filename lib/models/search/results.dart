import 'dart:convert';

import 'package:anipocket/models/search/result_anime.dart';

class Results {
    List<ResultAnime> results;
    int lastPage;

    Results({
        this.results,
        this.lastPage,
    });

    factory Results.fromRawJson(String str) => Results.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Results.fromJson(Map<String, dynamic> json) => Results(
        results: json["results"] == null ? null : List<ResultAnime>.from(json["results"].map((x) => ResultAnime.fromJson(x))),
        lastPage: json["last_page"] == null ? null : json["last_page"],
    );

    Map<String, dynamic> toJson() => {
        "results": results == null ? null : List<dynamic>.from(results.map((x) => x.toJson())),
        "last_page": lastPage == null ? null : lastPage,
    };
}
