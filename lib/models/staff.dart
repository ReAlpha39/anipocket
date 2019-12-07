import 'dart:convert';

class Staff {
    int malId;
    String name;
    String url;
    String imageUrl;
    Language language;
    List<String> positions;

    Staff({
        this.malId,
        this.name,
        this.url,
        this.imageUrl,
        this.language,
        this.positions,
    });

    factory Staff.fromRawJson(String str) => Staff.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Staff.fromJson(Map<String, dynamic> json) => Staff(
        malId: json["mal_id"] == null ? null : json["mal_id"],
        name: json["name"] == null ? null : json["name"],
        url: json["url"] == null ? null : json["url"],
        imageUrl: json["image_url"] == null ? null : json["image_url"],
        language: json["language"] == null ? null : languageValues.map[json["language"]],
        positions: json["positions"] == null ? null : List<String>.from(json["positions"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "mal_id": malId == null ? null : malId,
        "name": name == null ? null : name,
        "url": url == null ? null : url,
        "image_url": imageUrl == null ? null : imageUrl,
        "language": language == null ? null : languageValues.reverse[language],
        "positions": positions == null ? null : List<dynamic>.from(positions.map((x) => x)),
    };
}

enum Language { FRENCH, JAPANESE, KOREAN, ENGLISH, GERMAN }

final languageValues = EnumValues({
    "English": Language.ENGLISH,
    "French": Language.FRENCH,
    "German": Language.GERMAN,
    "Japanese": Language.JAPANESE,
    "Korean": Language.KOREAN
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