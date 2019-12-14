import 'package:anipocket/redux/appstate_season_list.dart';
import 'package:anipocket/redux/reducer_season_list.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

final Store<AppStateSeasonList> store = Store<AppStateSeasonList>(
  reducer,
  initialState: AppStateSeasonList(title: 'This Season', ),
  middleware: [thunkMiddleware]
);