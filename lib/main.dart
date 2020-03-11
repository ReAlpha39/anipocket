import 'package:anipocket/bloc/home_bloc.dart';
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
    return BlocProvider(
      create: (context) {
        return HomeBloc(jikanApi: JikanApi());
      },
      child: StoreProvider<AppState>(
        store: store,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage()
        )
      ),
    );
  }
}
