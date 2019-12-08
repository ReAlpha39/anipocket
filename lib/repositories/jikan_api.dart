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

  Future<AnimeEpisodes> getAnimeEpisodes(int animeId, {int episodes = 1}) async {
    var url = baseUrl + '/anime/$animeId/episodes/$episodes';
    var output;
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        output = AnimeEpisodes.fromRawJson(response.body);
      }
    } on SocketException{
      throw Exception('Connection Error');
    }
    return output;
  }

  Future<AnimeNews> getAnimeNews(int animeId) async {
    var url = baseUrl + '/anime/$animeId/news';
    var output;
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        output = AnimeNews.fromRawJson(response.body);
      }
    } on SocketException{
      throw Exception('Connection Error');
    }
    return output;
  }

  Future<AnimePictures> getAnimePictures(int animeId) async {
    var url = baseUrl + '/anime/$animeId/pictures';
    var output;
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        output = AnimeNews.fromRawJson(response.body);
      }
    } on SocketException{
      throw Exception('Connection Error');
    }
    return output;
  }

  Future<AnimeVideos> getAnimeVideos(int animeId) async {
    var url = baseUrl + '/anime/$animeId/videos';
    var output;
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        output = AnimeNews.fromRawJson(response.body);
      }
    } on SocketException{
      throw Exception('Connection Error');
    }
    return output;
  }

  Future<Stats> getAnimeStats(int animeId) async {
    var url = baseUrl + '/anime/$animeId/stats';
    var output;
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        output = AnimeNews.fromRawJson(response.body);
      }
    } on SocketException{
      throw Exception('Connection Error');
    }
    return output;
  }
}