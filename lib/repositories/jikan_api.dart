import 'dart:io';

import 'package:anipocket/models/genre/genre_id.dart';
import 'package:anipocket/models/schedule/anime_schedule.dart';
import 'package:anipocket/models/schedule/list_day.dart';
import 'package:anipocket/models/search/results.dart';
import 'package:anipocket/models/season/season_anime.dart';
import 'package:anipocket/models/season/season_archive.dart';
import 'package:anipocket/models/season/season_later.dart';
import 'package:anipocket/models/season/season_type.dart';
import 'package:anipocket/models/type.dart';
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
    } catch (e) {
      print(e);
    }
    return output;
  }

  Future<Results> getResults({String queries, Type type, GenreId genre}) async {
    var url = baseUrl + '/search/anime?';
    if (queries != null) {
      var query = queries.replaceAll(" ", "+");
      url += "q=" + query;
    }
    if (type != null) {
      String typeToString = typeValues.reverseMap[type];
      url += "type=" + typeToString;
    }
    if (genre != null) {
      String genreToString = GenreId.values(genre);
      url += "genre=" + genreToString;
    }
    var output;
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        output = Results.fromRawJson(response.body);
      } 
    } catch (e) {
      print(e);
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
    } catch (e) {
      print(e);
    }
    return output;
  }

  Future<Episodes> getEpisodes(int animeId, {int episodes = 1}) async {
    var url = baseUrl + '/anime/$animeId/episodes/$episodes';
    var output;
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        output = Episodes.fromRawJson(response.body);
      }
    } catch (e) {
      print(e);
    }
    return output;
  }

  Future<News> getNews(int animeId) async {
    var url = baseUrl + '/anime/$animeId/news';
    var output;
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        output = News.fromRawJson(response.body);
      }
    } catch (e) {
      print(e);
    }
    return output;
  }

  Future<Pictures> getPictures(int animeId) async {
    var url = baseUrl + '/anime/$animeId/pictures';
    var output;
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        output = News.fromRawJson(response.body);
      }
    } catch (e) {
      print(e);
    }
    return output;
  }

  Future<Videos> getVideos(int animeId) async {
    var url = baseUrl + '/anime/$animeId/videos';
    var output;
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        output = News.fromRawJson(response.body);
      }
    } catch (e) {
      print(e);
    }
    return output;
  }

  Future<Stats> getAnimeStats(int animeId) async {
    var url = baseUrl + '/anime/$animeId/stats';
    var output;
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        output = News.fromRawJson(response.body);
      }
    } catch (e) {
      print(e);
    }
    return output;
  }

  Future<Recommendations> getRecommendations(int animeId) async {
    var url = baseUrl + '/anime/$animeId/recommendations';
    var output;
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        output = News.fromRawJson(response.body);
      }
    } catch (e) {
      print(e);
    }
    return output;
  }

  Future<CharactersStaff> getAnimeCharacters(int animeId) async {
    var url = baseUrl + '/anime/$animeId/characters';
    var output;
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        output = CharactersStaff.fromRawJson(response.body);
      }
    } catch (e) {
      print(e);
    }
    return output;
  }

  Future<MangaInfo> getMangaInfo(int mangaId) async {
    var url = baseUrl + '/manga/$mangaId';
    var output;
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        output = MangaInfo.fromRawJson(response.body);
      }
    } catch (e) {
      print(e);
    }
    return output;
  }

  Future<CharactersStaff> getMangaCharacters(int mangaId) async {
    var url = baseUrl + '/manga/$mangaId/characters';
    var output;
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        output = CharactersStaff.fromRawJson(response.body);
      }
    } catch (e) {
      print(e);
    }
    return output;
  }

  Future<News> getMangaNews(int mangaId) async {
    var url = baseUrl + '/manga/$mangaId/news';
    var output;
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        output = News.fromRawJson(response.body);
      }
    } catch (e) {
      print(e);
    }
    return output;
  }

  Future<Pictures> getMangaPictures(int mangaId) async {
    var url = baseUrl + '/manga/$mangaId/pictures';
    var output;
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        output = Pictures.fromRawJson(response.body);
      }
    } catch (e) {
      print(e);
    }
    return output;
  }

  Future<Stats> getMangaStats(int mangaId) async {
    var url = baseUrl + '/manga/$mangaId/stats';
    var output;
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        output = Stats.fromRawJson(response.body);
      }
    } catch (e) {
      print(e);
    }
    return output;
  }

  Future<Recommendations> getMangaRecommendations(int mangaId) async {
    var url = baseUrl + '/manga/$mangaId/recommendations';
    var output;
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        output = Recommendations.fromRawJson(response.body);
      }
    } catch (e) {
      print(e);
    }
    return output;
  }

  Future<SeasonAnime> getSeasonAnime({int year, SeasonType seasonType}) async {
    var url = baseUrl + '/season';
    if (year != null && seasonType != null) {
      url += '/$year/${seasonTypeValues.reverse[seasonType].toLowerCase()}';
    }
    var output;
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        output = SeasonAnime.fromRawJson(response.body);
      }
    } catch (e) {
      print(e);
    }
    return output;
  }

  Future<SeasonLater> getSeasonLater() async {
    var url = baseUrl + '/season/later';
    var output;
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        output = SeasonLater.fromRawJson(response.body);
      }
    } catch (e) {
      print(e);
    }
    return output;
  }

  Future<SeasonArchive> getSeasonArchive() async {
    var url = baseUrl + '/season/archive';
    var output;
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        output = SeasonArchive.fromRawJson(response.body);
      }
    } catch (e) {
      print(e);
    }
    return output;
  }

  Future<AnimeSchedule> getAnimeSchedule(ListDay day) async {
    var url = baseUrl + '/schedule/${listDayToString(day)}';
    var output;
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        output = AnimeSchedule.fromRawJson(response.body);
      }
    } catch (e) {
      print(e);
    }
    return output;
  }
}