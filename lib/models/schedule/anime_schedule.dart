import 'dart:convert';

import 'package:anipocket/models/season/anime.dart';

class AnimeSchedule {
    List<Anime> monday;
    List<Anime> tuesday;
    List<Anime> wednesday;
    List<Anime> thursday;
    List<Anime> friday;
    List<Anime> saturday;
    List<Anime> sunday;
    List<Anime> other;
    List<Anime> unknown;

    AnimeSchedule({
        this.monday,
        this.tuesday,
        this.wednesday,
        this.thursday,
        this.friday,
        this.saturday,
        this.sunday,
        this.other,
        this.unknown,
    });

    factory AnimeSchedule.fromRawJson(String str) => AnimeSchedule.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory AnimeSchedule.fromJson(Map<String, dynamic> json) => AnimeSchedule(
        monday: json["monday"] == null ? null : List<Anime>.from(json["monday"].map((x) => Anime.fromJson(x))),
        tuesday: json["tuesday"] == null ? null : List<Anime>.from(json["tuesday"].map((x) => Anime.fromJson(x))),
        wednesday: json["wednesday"] == null ? null : List<Anime>.from(json["wednesday"].map((x) => Anime.fromJson(x))),
        thursday: json["thursday"] == null ? null : List<Anime>.from(json["thursday"].map((x) => Anime.fromJson(x))),
        friday: json["friday"] == null ? null : List<Anime>.from(json["friday"].map((x) => Anime.fromJson(x))),
        saturday: json["saturday"] == null ? null : List<Anime>.from(json["saturday"].map((x) => Anime.fromJson(x))),
        sunday: json["sunday"] == null ? null : List<Anime>.from(json["sunday"].map((x) => Anime.fromJson(x))),
        other: json["other"] == null ? null : List<Anime>.from(json["other"].map((x) => Anime.fromJson(x))),
        unknown: json["unknown"] == null ? null : List<Anime>.from(json["unknown"].map((x) => Anime.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "monday": monday == null ? null : List<dynamic>.from(monday.map((x) => x.toJson())),
        "tuesday": tuesday == null ? null : List<dynamic>.from(tuesday.map((x) => x.toJson())),
        "wednesday": wednesday == null ? null : List<dynamic>.from(wednesday.map((x) => x.toJson())),
        "thursday": thursday == null ? null : List<dynamic>.from(thursday.map((x) => x.toJson())),
        "friday": friday == null ? null : List<dynamic>.from(friday.map((x) => x.toJson())),
        "saturday": saturday == null ? null : List<dynamic>.from(saturday.map((x) => x.toJson())),
        "sunday": sunday == null ? null : List<dynamic>.from(sunday.map((x) => x.toJson())),
        "other": other == null ? null : List<dynamic>.from(other.map((x) => x.toJson())),
        "unknown": unknown == null ? null : List<dynamic>.from(unknown.map((x) => x.toJson())),
    };
}