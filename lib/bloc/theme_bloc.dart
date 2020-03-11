import 'package:anipocket/app_theme.dart';
import 'package:anipocket/bloc/theme_event.dart';
import 'package:anipocket/bloc/theme_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  @override
  ThemeState get initialState => ThemeState(themeData: appThemeData[AppTheme.LightTheme]);

  @override
  Stream<ThemeState> mapEventToState(ThemeEvent event) async* {
    // TODO: implement mapEventToState
    if (event is ThemeChanged) {
      yield ThemeState(themeData: appThemeData[event.theme]);
    }
  }
}