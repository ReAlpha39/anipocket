import 'package:anipocket/models/models.dart';
import 'package:anipocket/models/request_type/request_type.dart';
import 'package:anipocket/widget/top_manga_list.dart';
import 'package:flutter/material.dart';


import '../models/request_type/tops.dart';
import '../models/top_type.dart';
import '../repositories/jikan_api.dart';

class TopMangaView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AniPocket'), actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        )
      ]),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "Top Manga",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              height: 700,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: FutureBuilder<Tops>(
                future: JikanApi().getTop(TopType.manga),
                builder: (context, snapshot){
                  if (snapshot.hasData == false){
                    return Container();
                  } else{
                    return ListView.builder(
                      itemCount: snapshot.data.top.length,
                      itemBuilder: (context, index){
                        return TopMangaList(
                         topManga : snapshot.data.top[index],
                        );
                      },
                    );
                  }
                },
              )
            ),
          ],
        ),
      ),
    );
  }
}
