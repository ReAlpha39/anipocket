import 'package:flutter/material.dart';

class AnimeDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(5),
          child: Row(
            children: <Widget>[
              Container(
                height: 250,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://cdn.myanimelist.net/images/anime/1630/103417.jpg'))),
              )
            ],
          ),
        ),
      ],
    );
  }
}
