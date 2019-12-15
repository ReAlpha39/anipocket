import 'package:anipocket/redux/appstate.dart';



AppState reducer(AppState appState, dynamic action) {
  switch (action.season) {
    case "Winter":
      {
        AppState newAppState = AppState(title: action.season + " " + action.year, seasonAnime: action.seasonAnime);
        return newAppState;
      }
      break;

      case "Spring":
      {
        AppState newAppState = AppState(title: action.season + " " + action.year, seasonAnime: action.seasonAnime);
        return newAppState;
      }
      break;

      case "Summer":
      {
        AppState newAppState = AppState(title: action.season + " " + action.year, seasonAnime: action.seasonAnime);
        return newAppState;
      }
      break;

      case "Fall":
      {
        AppState newAppState = AppState(title: action.season + " " + action.year, seasonAnime: action.seasonAnime);
        return newAppState;
      }
      break;
    default:
      {
        AppState newAppState = AppState();
        return newAppState;
      }
  }

}