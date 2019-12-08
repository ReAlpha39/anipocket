import 'package:anipocket/models/season/anime.dart';
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
              )
            ],
          ),
        ),
      ),
    );
  }
}