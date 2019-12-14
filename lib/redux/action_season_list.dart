import 'package:anipocket/models/season/season_anime.dart';
import 'package:anipocket/models/season/season_type.dart';
import 'package:anipocket/redux/appstate_season_list.dart';
import 'package:anipocket/repositories/jikan_api.dart';
import 'package:redux_thunk/redux_thunk.dart';

class GotData {
  SeasonAnime results;
  String season;
  String year;

  SeasonAnime get seasonAnime => this.results;

  GotData({this.results, this.season, this.year});
}

ThunkAction<AppStateSeasonList> getSeasonAnime({String season}) {
  return (store) async {
    JikanApi jikanApi = JikanApi();
    switch (season) {
      case 'Winter':
        {
          store.dispatch(GotData(
            results: await jikanApi.getSeasonAnime(2019, SeasonType.WINTER),
            season: season,
            year: '2019'
          ));
        }
        break;

      case 'Spring':
        {
          store.dispatch(GotData(
            results: await jikanApi.getSeasonAnime(2019, SeasonType.SPRING),
            season: season,
            year: '2019'
          ));
        }
        break;

      case 'Summer':
        {
          store.dispatch(GotData(
            results: await jikanApi.getSeasonAnime(2019, SeasonType.SUMMER),
            season: season,
            year: '2019'
          ));
        }
        break;

      case 'Fall':
        {
          store.dispatch(GotData(
            results: await jikanApi.getSeasonAnime(2019, SeasonType.FALL),
            season: season,
            year: '2019'
          ));
        }
        break;
      default:
        {
          store.dispatch(GotData(
            results: await jikanApi.getSeasonAnime(2019, SeasonType.WINTER)
          ));
        }
    }
  };
}