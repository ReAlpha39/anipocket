import 'package:anipocket/bloc/home_bloc.dart';
import 'package:anipocket/bloc/theme_bloc.dart';
import 'package:anipocket/bloc/theme_state.dart';
import 'package:anipocket/redux/appstate.dart';
import 'package:anipocket/redux/store.dart';
import 'package:anipocket/repositories/jikan_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'views/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (context) => HomeBloc(jikanApi: JikanApi())
        ),
        BlocProvider<ThemeBloc>(
          create: (context) => ThemeBloc(),
        )
      ],
      child: StoreProvider<AppState>(
        store: store,
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: _buildWithTheme
        )
      ),
    );
  }

  Widget _buildWithTheme(BuildContext context, ThemeState state) {
    return MaterialApp(
      theme: state.themeData,
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}
