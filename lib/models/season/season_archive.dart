import 'dart:convert';

import 'package:anipocket/models/season/archive.dart';

class SeasonArchive {
    List<Archive> archive;

    SeasonArchive({
        this.archive,
    });

    factory SeasonArchive.fromRawJson(String str) => SeasonArchive.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory SeasonArchive.fromJson(Map<String, dynamic> json) => SeasonArchive(
        archive: json["archive"] == null ? null : List<Archive>.from(json["archive"].map((x) => Archive.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "archive": archive == null ? null : List<dynamic>.from(archive.map((x) => x.toJson())),
    };
} 