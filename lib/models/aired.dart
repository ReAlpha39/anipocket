import 'dart:convert';

class Aired {
    DateTime from;
    DateTime to;
    String string;

    Aired({
        this.from,
        this.to,
        this.string,
    });

    factory Aired.fromRawJson(String str) => Aired.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Aired.fromJson(Map<String, dynamic> json) => Aired(
        from: json["from"] == null ? null : DateTime.parse(json["from"]),
        to: json["to"] == null ? null : DateTime.parse(json["to"]),
        string: json["string"] == null ? null : json["string"],
    );

    Map<String, dynamic> toJson() => {
        "from": from == null ? null : from.toIso8601String(),
        "to": to == null ? null : to.toIso8601String(),
        "string": string == null ? null : string,
    };
}