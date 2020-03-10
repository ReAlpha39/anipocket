import 'package:anipocket/models/models.dart';
import 'package:anipocket/models/request_type/tops.dart';
import 'package:anipocket/repositories/jikan_api.dart';
import 'package:anipocket/widget/minimal_card_anime.dart';
import 'package:flutter/material.dart';

class PreviewMostPopular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Most Populer",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                  FlatButton(
                    child: Text(
                      "View All",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 300,
            child: FutureBuilder<Tops>(
                future: JikanApi().getTop(TopType.anime),
                builder: (context, snapshot) {
                  if (snapshot.hasData == false) {
                    return Container();
                  } else {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return MinCardAnime(
                          topAnime: snapshot.data.top[index],
                        );
                      },
                    );
                  }
                }),
          ),
        ],
      ),
    );
  }
}
