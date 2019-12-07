enum SeasonType { WINTER, SPRING, SUMMER, FALL }

final seasonTypeValues = EnumValues({
    "Fall": SeasonType.FALL,
    "Spring": SeasonType.SPRING,
    "Summer": SeasonType.SUMMER,
    "Winter": SeasonType.WINTER
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