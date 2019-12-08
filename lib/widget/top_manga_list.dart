import 'package:flutter/material.dart';

class TopMangaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                          'https://cdn.myanimelist.net/images/manga/1/157931l.jpg'))),
            ),
          ]),
        ),
      )
    ]);
  }
}
