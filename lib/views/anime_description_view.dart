import 'package:anipocket/widget/anime_description.dart';
import 'package:flutter/material.dart';

class AnimeDescriptionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'AniPocket',
          style: TextStyle(
            color: Colors.black
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: AnimeDescription()
    );
  }
}