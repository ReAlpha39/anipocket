import 'package:anipocket/models/season/anime.dart';
import 'package:anipocket/models/type.dart';
import 'package:flutter/material.dart';

class CardAnime extends StatelessWidget {
  final Anime anime;

  const CardAnime({this.anime});
  @override
  Widget build(BuildContext context) {
    String genre = '';
    for (int i = 0; i < anime.genres.length; i++) {
        if (anime.genres.length -1 == i) {
          genre += anime.genres[i].name;
        } else {
          genre += anime.genres[i].name + ' • ';
        }
      }

    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      child: Card(
        elevation: 6,
        child: Container(
          constraints:
              BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4), color: Colors.white),
          child: Row(
            children: <Widget>[
              Container(
                height: 220,
                width: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    bottomLeft: Radius.circular(4),
                  ),
                  child: Image.network(
                        anime.imageUrl,
                        loadingBuilder: (context, child, progress) {
                          return progress == null
                            ? child
                            : LinearProgressIndicator();
                        }, 
                        fit: BoxFit.cover,
                      ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 220,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(4)),
                                color: Colors.black12),
                            width: double.infinity,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(anime.title.toString() == 'null' ? 'Unknown' : anime.title),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 6, bottom: 6),
                            width: double.infinity,
                            color: Colors.grey[100],
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Text(
                                  typeValues.reverse[anime.type].toString() == 'null' ? 'Unknown' : typeValues.reverseMap[anime.type] ,
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text(anime.score.toString() == 'null' ? 'No score available':anime.score.toString(),
                                    style: TextStyle(fontSize: 12))
                              ],
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: SizedBox(
                          width: double.infinity,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 4,
                              right: 4,
                              top: 8,
                              bottom: 8
                            ),
                            child: SingleChildScrollView(child: Text(anime.synopsis, style: TextStyle(fontSize: 12),)),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(4))),
                        child: Text(
                              '$genre',
                              overflow: TextOverflow.clip,
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12, wordSpacing: 2),
                            ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
