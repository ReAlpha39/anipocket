enum Type { ANIME, MANGA, TV, MOVIE, SPECIAL, ONA, OVA, MUSIC, DOUJIN, MANHWA, NOVEL, MANHUA, ONESHOT }

final typeValues = EnumValues({
    "anime": Type.ANIME,
    "manga": Type.MANGA,
    "Movie": Type.MOVIE,
    "Special": Type.SPECIAL,
    "ONA": Type.ONA,
    "OVA": Type.OVA,
    "TV": Type.TV,
    "Manhua": Type.MANHUA,
    "Manhwa": Type.MANHWA,
    "Novel": Type.NOVEL,
    "Music": Type.MUSIC,
    "Oneshot": Type.ONESHOT,
    "Doujin": Type.DOUJIN
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