// To parse this JSON data, do
//
//     final charactersStaff = charactersStaffFromJson(jsonString);

import 'dart:convert';

import 'package:anipocket/models/models.dart';
import 'package:anipocket/models/staff.dart';


class CharactersStaff {
    List<Character> characters;
    List<Staff> staff;

    CharactersStaff({
        this.characters,
        this.staff,
    });

    factory CharactersStaff.fromRawJson(String str) => CharactersStaff.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory CharactersStaff.fromJson(Map<String, dynamic> json) => CharactersStaff(
        characters: json["characters"] == null ? null : List<Character>.from(json["characters"].map((x) => Character.fromJson(x))),
        staff: json["staff"] == null ? null : List<Staff>.from(json["staff"].map((x) => Staff.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "characters": characters == null ? null : List<dynamic>.from(characters.map((x) => x.toJson())),
        "staff": staff == null ? null : List<dynamic>.from(staff.map((x) => x.toJson())),
    };
}





