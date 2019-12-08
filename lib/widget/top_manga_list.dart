
import 'package:anipocket/models/genre.dart';
import 'package:anipocket/models/genre/genre_id.dart';
import 'package:anipocket/models/models.dart';
import 'package:flutter/material.dart';

import '../repositories/jikan_api.dart';

class TopMangaList extends StatelessWidget {
  final Top topManga;

  const TopMangaList({this.topManga});

  @override
  Widget build(BuildContext context) {
    var api = JikanApi();
    var data = api.getMangaInfo(11061);

    return Column(children: <Widget>[
      Card(
        elevation: 10,
        child: Container(
          padding: EdgeInsets.all(8),
          child: Row(children: <Widget>[
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
                          topManga.imageUrl))),
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
                          topManga.title,
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
                            topManga.score.toString(),
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                         Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            'Rank : #' + topManga.rank.toString(),
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            'Manga',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            'Members : ' + topManga.members.toString(),
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            topManga.url,
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
          ]),
        ),
      )
    ]);
  }
}
