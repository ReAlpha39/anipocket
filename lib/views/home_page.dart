import 'package:anipocket/models/models.dart';
import 'package:anipocket/models/request_type/request_type.dart';
import 'package:anipocket/repositories/jikan_api.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('AniPocket', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Theme.of(context).primaryColor,
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(top: 30, bottom: 10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://images.wallpaperscraft.com/image/anime_face_hair_mask_85079_300x168.jpg"),
                              fit: BoxFit.fill)),
                    ),
                    Text(
                      "Muhammad Miftah",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    Text(
                      "muhammadmiftah998@gmail.com",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: Text("Top Anime"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Seasonal Anime"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Setting"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Dark Theme"),
              trailing: Switch(
                value: false,
                onChanged: (chnageTheme) {},
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(children: <Widget>[
            Container(
              //padding: EdgeInsets.all(10),
              child: Expanded(
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
              ),
            ),
            //batesnya INI

            Container(
              //padding: EdgeInsets.all(10),
              child: Expanded(
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
                              "List Top",
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
                                  return ListTopAnime(
                                    listanime: snapshot.data.top[index],
                                  );
                                },
                              );
                            }
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ] //snd
              ),
        ),
      ),
    );
  }
}

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

class ListTopAnime extends StatefulWidget {
  final Top listanime;

  const ListTopAnime({this.listanime});
  @override
  _ListTopAnimeState createState() => _ListTopAnimeState();
}

class _ListTopAnimeState extends State<ListTopAnime> {
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
                    image: NetworkImage(widget.listanime.imageUrl),
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
              widget.listanime.title,
              overflow: TextOverflow.ellipsis,
            )),
          ),
        ],
      ),
    );
  }
}
