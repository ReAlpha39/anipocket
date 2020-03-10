import 'package:anipocket/models/models.dart';
import 'package:flutter/material.dart';

class MinCardAnime extends StatefulWidget {
  final Top topAnime;

  const MinCardAnime({this.topAnime});
  @override
  _CardAnimeState createState() => _CardAnimeState();
}

class _CardAnimeState extends State<MinCardAnime> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      //height: 200,
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          //Expanded(
          Container(
            height: 230,
            //width: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(widget.topAnime.imageUrl),
                    fit: BoxFit.fill),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(3, 3))
                ],
                borderRadius: BorderRadius.all(Radius.circular(8))),
          ),
          // ClipRRect(

          //   borderRadius: BorderRadius.circular(10),
          //   child: Image.network(widget.topAnime.imageUrl,),
          // ),

          Padding(
            padding: const EdgeInsets.all(4),
            child: Center(
                child: Text(
              widget.topAnime.title,
              overflow: TextOverflow.ellipsis,
            )),
          ),
        ],
      ),
    );
  }
}