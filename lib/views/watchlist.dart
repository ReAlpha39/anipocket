import 'package:anipocket/models/season/anime.dart';
import 'package:anipocket/models/season/season_anime.dart';
import 'package:anipocket/models/season/season_type.dart';
import 'package:anipocket/models/type.dart';
import 'package:anipocket/repositories/jikan_api.dart';
import 'package:anipocket/widget/CardAnime.dart';

import 'package:flutter/material.dart';

class WatchList extends StatefulWidget {
  @override
  _WatchListState createState() => _WatchListState();
}

class _WatchListState extends State<WatchList> {
  var api = JikanApi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[100],
        title: Text(
          'Watchlist',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: FutureBuilder<SeasonAnime>(
          future: api.getSeasonAnime(2018, SeasonType.WINTER),
          builder: (context, snapshot) {
            if (snapshot.hasData == false) {
              return Center(child: CircularProgressIndicator());
            } else {
              return ListView.builder(
                itemCount: snapshot.data.anime.length,
                itemBuilder: (context, index) {
                  return CardAnime(anime: snapshot.data.anime[index]);
                },
              );
            }
          },
        ),
      ),
    );
  }
}


