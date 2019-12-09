import 'package:anipocket/models/models.dart';
import 'package:anipocket/models/top_type.dart';
import 'package:flutter/material.dart';
import 'package:anipocket/models/request_type/tops.dart';
import 'package:anipocket/models/top.dart';
import 'package:anipocket/repositories/jikan_api.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AniPocket', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Muhammad Miftah"),
              accountEmail: Text("muhammadmiftah998@gmail.com"),
              decoration: BoxDecoration(color: Colors.black87),
            ),
            ListTile(
              title: Text("First Page"),
              leading: Icon(Icons.home, color: Colors.redAccent[700]),
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
                                  return CardAnime(
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
                                  return CardAnime(
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
            
          ] //snd
              ),
        ),
      ),
    );
  }
}

class CardAnime extends StatefulWidget {
  final Top topAnime;

  const CardAnime({this.topAnime});
  @override
  _CardAnimeState createState() => _CardAnimeState();
}

class _CardAnimeState extends State<CardAnime> {
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

  const ListTopAnime ({this.listanime});
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
