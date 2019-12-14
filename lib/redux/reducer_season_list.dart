import 'package:anipocket/redux/appstate_season_list.dart';



AppStateSeasonList reducer(AppStateSeasonList appState, dynamic action) {
  switch (action.season) {
    case "Winter":
      {
        AppStateSeasonList newAppStateSeasonList = AppStateSeasonList(title: action.season + " " + action.year, seasonAnime: action.seasonAnime);
        return newAppStateSeasonList;
      }
      break;

      case "Spring":
      {
        AppStateSeasonList newAppStateSeasonList = AppStateSeasonList(title: action.season + " " + action.year, seasonAnime: action.seasonAnime);
        return newAppStateSeasonList;
      }
      break;

      case "Summer":
      {
        AppStateSeasonList newAppStateSeasonList = AppStateSeasonList(title: action.season + " " + action.year, seasonAnime: action.seasonAnime);
        return newAppStateSeasonList;
      }
      break;

      case "Fall":
      {
        AppStateSeasonList newAppStateSeasonList = AppStateSeasonList(title: action.season + " " + action.year, seasonAnime: action.seasonAnime);
        return newAppStateSeasonList;
      }
      break;
    default:
      {
        AppStateSeasonList newAppStateSeasonList = AppStateSeasonList();
        return newAppStateSeasonList;
      }
  }

}