import 'dart:convert';

import 'package:anipocket/models/search/result_anime.dart';
import 'package:anipocket/models/search/result_manga.dart';

class Results {
    List<ResultAnime> resultsAnime;
    List<ResultManga> resultsManga;
    int lastPage;

    Results({
        this.resultsAnime,
        this.resultsManga,
        this.lastPage,
    });

    factory Results.fromRawJson(String str) => Results.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Results.fromJson(Map<String, dynamic> json) => Results(
        resultsAnime: json["resultsAnime"] == null ? null : List<ResultAnime>.from(json["resultsAnime"].map((x) => ResultAnime.fromJson(x))),
        resultsManga: json["resultsManga"] == null ? null : List<ResultManga>.from(json["resultsManga"].map((x) => ResultManga.fromJson(x))),
        lastPage: json["last_page"] == null ? null : json["last_page"],
    );

    Map<String, dynamic> toJson() => {
        "resultsAnime": resultsAnime == null ? null : List<dynamic>.from(resultsAnime.map((x) => x.toJson())),
        "resultsManga": resultsManga == null ? null : List<dynamic>.from(resultsManga.map((x) => x.toJson())),
        "last_page": lastPage == null ? null : lastPage,
    };
}
