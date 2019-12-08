import 'package:flutter/material.dart';

class TopAnimeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: AppBar(title: Text('AniPocket'), actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        )
      ]),
    );
  }
}