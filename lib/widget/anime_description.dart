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
              ),
              Container(
                padding: const EdgeInsets.all(5),
                height: 250,
                width: 250,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Sword Art Online: Alicization - War of Underworld',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                 Container(
                padding: const EdgeInsets.only(top: 80),
                width: MediaQuery.of(context).size.width,
                child: Text(
                  '7.88',
                  style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                ),
              ),
                       Container(
                      padding: const EdgeInsets.only(top: 10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: Colors.grey[100]),
                      child: Text(
                        'Fall 2019 ' + ' TV ' + ' AIring ' + ' 12eps ',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
