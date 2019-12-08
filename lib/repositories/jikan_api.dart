import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:anipocket/models/models.dart';
import 'package:anipocket/models/request_type/request_type.dart';

class JikanApi {
  final String baseUrl = 'https://api.jikan.moe/v3';

  Future<Tops> getTop(TopType type, {int page, TopSubtype subtype}) async {
    var url = baseUrl + '/top/${topTypeToString(type)}';
    if (page != null) {
      url += '/$page';
    }else if (subtype != null) {
      url += '/${topSubtypeToString(subtype)}';
    }
    var output;
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        output = Tops.fromRawJson(response.body);
      }
    } on SocketException{
      throw Exception('Connection Error');
    }
    return output;
  }

  Future<AnimeInfo> getAnimeInfo(int animeId) async {
    var url = baseUrl + '/anime/$animeId';
    var output;
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        output = AnimeInfo.fromRawJson(response.body);
      }
    } on SocketException{
      throw Exception('Connection Error');
    }
    return output;
  }

  
}