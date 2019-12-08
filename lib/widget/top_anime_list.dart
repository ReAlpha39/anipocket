import 'package:flutter/material.dart';

class TopAnimeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          elevation: 5,
          child: Container(
            padding: EdgeInsets.all(8),
            child: Row(
              children: <Widget>[
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
                              'https://cdn.myanimelist.net/images/anime/5/87048l.jpg'))),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 200,
                  width: 200,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Kimi no Na wa.',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            'Score : 9.09' ,
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            'Movie',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                          Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            'Episode : 1',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                         Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            'Aug 2016 - Aug 2016',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
