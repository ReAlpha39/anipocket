import 'package:anipocket/models/models.dart';
import 'package:anipocket/models/season/anime.dart';
import 'package:flutter/material.dart';

class MinCardAnime extends StatelessWidget {
  final Top topAnime;
  final Anime anime;

  const MinCardAnime({this.topAnime, this.anime});

  @override
  Widget build(BuildContext context) {
    String imageUrl;
    String title;

    if (anime == null) {
      imageUrl = topAnime.imageUrl;
      title = topAnime.title;
    }else if (topAnime == null) {
      imageUrl = anime.imageUrl;
      title = anime.title;
    }

    return Container(
      width: 150,
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 230,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(imageUrl), fit: BoxFit.fill),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(3, 3))
                ],
                borderRadius: BorderRadius.all(Radius.circular(8))),
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Center(
                child: Text(
              title,
              overflow: TextOverflow.ellipsis,
            )),
          ),
        ],
      ),
    );
  }
}