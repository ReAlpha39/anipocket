import 'dart:convert';

import 'package:anipocket/models/staff.dart';

class Character {
    int malId;
    String url;
    String imageUrl;
    String name;
    Role role;
    List<Staff> voiceActors;

    Character({
        this.malId,
        this.url,
        this.imageUrl,
        this.name,
        this.role,
        this.voiceActors,
    });

    factory Character.fromRawJson(String str) => Character.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Character.fromJson(Map<String, dynamic> json) => Character(
        malId: json["mal_id"] == null ? null : json["mal_id"],
        url: json["url"] == null ? null : json["url"],
        imageUrl: json["image_url"] == null ? null : json["image_url"],
        name: json["name"] == null ? null : json["name"],
        role: json["role"] == null ? null : roleValues.map[json["role"]],
        voiceActors: json["voice_actors"] == null ? null : List<Staff>.from(json["voice_actors"].map((x) => Staff.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "mal_id": malId == null ? null : malId,
        "url": url == null ? null : url,
        "image_url": imageUrl == null ? null : imageUrl,
        "name": name == null ? null : name,
        "role": role == null ? null : roleValues.reverse[role],
        "voice_actors": voiceActors == null ? null : List<dynamic>.from(voiceActors.map((x) => x.toJson())),
    };
}

enum Role { MAIN, SUPPORTING }

final roleValues = EnumValues({
    "Main": Role.MAIN,
    "Supporting": Role.SUPPORTING
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
