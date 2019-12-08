import 'package:anipocket/models/season/anime.dart';
import 'package:anipocket/models/type.dart';
import 'package:flutter/material.dart';

class CardAnime extends StatelessWidget {
  final Anime anime;

  const CardAnime({this.anime});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16, left: 16, right: 16
      ),
      child: Card(
        elevation: 6,
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.white
          ),
          child: Row(
            children: <Widget>[
              Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    bottomLeft: Radius.circular(4),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(anime.imageUrl),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Expanded(
                  child: Container(
                    height: 200,
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(4)),
                            color: Colors.black12
                          ),
                          width: double.infinity,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(anime.title),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 6, bottom: 6),
                          width: double.infinity,
                          color: Colors.grey[100],
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(typeValues.reverse[anime.type], style: TextStyle(fontSize: 12),),
                              Text(anime.score.toString(), style: TextStyle(fontSize: 12))
                            ],
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