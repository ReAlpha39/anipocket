import 'package:anipocket/models/season/season_anime.dart';

class GotData {
  SeasonAnime results;
  String season;
  String year;

  SeasonAnime get seasonAnime => this.results;

  GotData({this.results, this.season, this.year});
}