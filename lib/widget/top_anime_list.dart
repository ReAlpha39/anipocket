import 'package:anipocket/models/models.dart';
import 'package:flutter/material.dart';

import '../models/type.dart';
import '../repositories/jikan_api.dart';

class TopAnimeList extends StatelessWidget {
  final Top topAnime;

  const TopAnimeList({this.topAnime});
  @override
  Widget build(BuildContext context) {
    var api = JikanApi();
    var data = api.getAnimeInfo(11061);

    return Column(
      children: <Widget>[
        Card(
          elevation: 5,
          child: Container(
            padding: EdgeInsets.all(8),
            child: Row(
              children: <Widget>[
                Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              topAnime.imageUrl))),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 200,
                  width: 200,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          topAnime.title,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            'Score :' + topAnime.score.toString(),
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            'Rank : #' + topAnime.rank.toString(),
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            typeValues.reverse[topAnime.type],
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            'Episode : ' + topAnime.episodes.toString(),
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            topAnime.startDate + ' - ' + topAnime.endDate,
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
