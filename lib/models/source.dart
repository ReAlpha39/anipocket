enum Source { LIGHT_NOVEL, MANGA, WEB_MANGA, THE_4_KOMA_MANGA, CARD_GAME, ORIGINAL, GAME, VISUAL_NOVEL, MUSIC, DIGITAL_MANGA, OTHER, NOVEL, PICTURE_BOOK, EMPTY }

final sourceValues = EnumValues({
    "Card game": Source.CARD_GAME,
    "Digital manga": Source.DIGITAL_MANGA,
    "-": Source.EMPTY,
    "Game": Source.GAME,
    "Light novel": Source.LIGHT_NOVEL,
    "Manga": Source.MANGA,
    "Music": Source.MUSIC,
    "Novel": Source.NOVEL,
    "Original": Source.ORIGINAL,
    "Other": Source.OTHER,
    "Picture book": Source.PICTURE_BOOK,
    "4-koma manga": Source.THE_4_KOMA_MANGA,
    "Visual novel": Source.VISUAL_NOVEL,
    "Web manga": Source.WEB_MANGA
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