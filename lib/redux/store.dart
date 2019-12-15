import 'package:anipocket/redux/appstate.dart';
import 'package:anipocket/redux/reducer.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

final Store<AppState> store = Store<AppState>(
  reducer,
  initialState: AppState(title: 'This Season', ),
  middleware: [thunkMiddleware]
);