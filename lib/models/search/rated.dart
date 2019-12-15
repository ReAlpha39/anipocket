enum Rated { PG_13, G, R, RATED_R, PG, RX }

final ratedValues = EnumValues({
    "G": Rated.G,
    "PG": Rated.PG,
    "PG-13": Rated.PG_13,
    "R+": Rated.R,
    "R": Rated.RATED_R,
    "Rx": Rated.RX
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