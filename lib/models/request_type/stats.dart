import 'dart:convert';

import 'package:anipocket/models/models.dart';

class Stats {
    int watching;
    int completed;
    int onHold;
    int dropped;
    int planToWatch;
    int total;
    Map<String, Score> scores;

    Stats({
        this.watching,
        this.completed,
        this.onHold,
        this.dropped,
        this.planToWatch,
        this.total,
        this.scores,
    });

    factory Stats.fromRawJson(String str) => Stats.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Stats.fromJson(Map<String, dynamic> json) => Stats(
        watching: json["watching"] == null ? null : json["watching"],
        completed: json["completed"] == null ? null : json["completed"],
        onHold: json["on_hold"] == null ? null : json["on_hold"],
        dropped: json["dropped"] == null ? null : json["dropped"],
        planToWatch: json["plan_to_watch"] == null ? null : json["plan_to_watch"],
        total: json["total"] == null ? null : json["total"],
        scores: json["scores"] == null ? null : Map.from(json["scores"]).map((k, v) => MapEntry<String, Score>(k, Score.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "watching": watching == null ? null : watching,
        "completed": completed == null ? null : completed,
        "on_hold": onHold == null ? null : onHold,
        "dropped": dropped == null ? null : dropped,
        "plan_to_watch": planToWatch == null ? null : planToWatch,
        "total": total == null ? null : total,
        "scores": scores == null ? null : Map.from(scores).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

