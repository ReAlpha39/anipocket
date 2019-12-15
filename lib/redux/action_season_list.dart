import 'package:anipocket/models/season/season_anime.dart';
import 'package:anipocket/models/season/season_type.dart';
import 'package:anipocket/redux/appstate.dart';
import 'package:anipocket/repositories/jikan_api.dart';
import 'package:intl/intl.dart';
import 'package:redux_thunk/redux_thunk.dart';

class GotData {
  SeasonAnime results;
  String season;
  String year;

  SeasonAnime get seasonAnime => this.results;

  GotData({this.results, this.season, this.year});
}

ThunkAction<AppState> getSeasonAnime({String season}) {
  DateTime _now = DateTime.now();
  String _thisMonth = DateFormat("MM").format(_now);
  int _thisYear = int.parse(DateFormat("yyyy").format(_now));
  int _year;
  List<String> winter = ['1','2','3'];
  List<String> spring = ['4','5','6'];
  List<String> summer = ['7','8','9'];
  List<String> fall = ['10','11','12'];
  SeasonType _seasonType = SeasonType.WINTER;
  String _thisSeason = '';
  if (winter.contains(_thisMonth)) {
    _seasonType = SeasonType.WINTER;
    _thisSeason = 'winter';
  } else if (spring.contains(_thisMonth)) {
    _seasonType = SeasonType.SPRING;
    _thisSeason = 'spring';
  } else if (summer.contains(_thisMonth)) {
    _seasonType = SeasonType.SUMMER;
    _thisSeason = 'summer';
  } else if (fall.contains(_thisMonth)) {
    _seasonType = SeasonType.FALL;
    _thisSeason = 'fall';
  }
  return (store) async {
    JikanApi jikanApi = JikanApi();
    switch (season) {
      case 'Winter':
        {
          if (_thisSeason == 'fall' || _thisSeason == 'summer') {
            int _nextYear = _thisYear + 1;
            _year = _nextYear;
          } else {
            _year = _thisYear;
          }
          store.dispatch(GotData(
            results: await jikanApi.getSeasonAnime(year: _year, seasonType:  SeasonType.WINTER),
            season: season,
            year: _year.toString()
          ));
        }
        break;

      case 'Spring':
        {
          if (_thisSeason == 'winter' || _thisSeason == 'fall') {
            int _nextYear = _thisYear + 1;
            _year = _nextYear;
          } else {
            _year = _thisYear;
          }
          store.dispatch(GotData(
            results: await jikanApi.getSeasonAnime(year: _year, seasonType:  SeasonType.SPRING),
            season: season,
            year: _year.toString()
          ));
        }
        break;

      case 'Summer':
        {
          if (_thisSeason == 'spring' || _thisSeason == 'winter') {
            int _nextYear = _thisYear + 1;
            _year = _nextYear;
          } else {
            _year = _thisYear;
          }
          store.dispatch(GotData(
            results: await jikanApi.getSeasonAnime(year: _year, seasonType: SeasonType.SUMMER),
            season: season,
            year: _year.toString()
          ));
        }
        break;

      case 'Fall':
        {
          if (_thisSeason == 'summer' || _thisSeason == 'spring') {
            int _nextYear = _thisYear + 1;
            _year = _nextYear;
          } else {
            _year = _thisYear;
          }
          store.dispatch(GotData(
            results: await jikanApi.getSeasonAnime(year:_year, seasonType: SeasonType.FALL),
            season: season,
            year: _year.toString()
          ));
        }
        break;
      default:
        {
          store.dispatch(GotData(
            results: await jikanApi.getSeasonAnime(year:_thisYear, seasonType: _seasonType)
          ));
        }
    }
  };
}