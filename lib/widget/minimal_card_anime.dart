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
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              child: Image.network(
                imageUrl,
                loadingBuilder: (context, child, progress) {
                  return progress == null
                    ? child
                    : LinearProgressIndicator();
                },
                fit: BoxFit.cover,
              ),
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[400],
                  blurRadius: 7,
                  spreadRadius: 1,
                  offset: Offset(1, 1)
                )
              ]
            ),
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