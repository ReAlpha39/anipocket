import 'package:anipocket/redux/appstate.dart';
import 'package:anipocket/redux/store.dart';
import 'package:anipocket/views/season_view.dart';
import 'package:flutter/material.dart';
import 'package:anipocket/widget/bloc.dart';
import 'package:flutter_redux/flutter_redux.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc.darkThemeEnabled,
      initialData: false,
      builder: (context, snapshot) => StoreProvider<AppState>(
        store: store,
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: snapshot.data ? ThemeData.dark() : ThemeData.light(),
            home: SeasonView()),
      ),
    );
  }
}
