import 'dart:convert';

class Score {
    int votes;
    double percentage;

    Score({
        this.votes,
        this.percentage,
    });

    factory Score.fromRawJson(String str) => Score.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Score.fromJson(Map<String, dynamic> json) => Score(
        votes: json["votes"] == null ? null : json["votes"],
        percentage: json["percentage"] == null ? null : json["percentage"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "votes": votes == null ? null : votes,
        "percentage": percentage == null ? null : percentage,
    };
}