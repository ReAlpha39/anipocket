import 'package:anipocket/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:anipocket/widget/bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc.darkThemeEnabled,
      initialData: false,
      builder: (context, snapshot) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: snapshot.data ? ThemeData.dark() : ThemeData.light(),
        home: Scaffold(
          appBar: AppBar(title: Text('AniPocket'), actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ]),
             drawer: Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text('Dark Theme'),
                trailing: Switch(
                  value: snapshot.data,
                  onChanged: bloc.changeTheme
                ),
              )
            ],
          ),
        ),
        ),
      ),
    );
  }
}
