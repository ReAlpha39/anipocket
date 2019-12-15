import 'package:flutter/material.dart';

class BoxInfo extends StatefulWidget {
  @override
  _BoxInfoState createState() => _BoxInfoState();
}

class _BoxInfoState extends State<BoxInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(alignment: Alignment.center, children: <Widget>[
        Container(
          padding: EdgeInsets.all(32),
          color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "99",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 24),
                      )
                    ],
                  ),
                  Text(
                    "Favorite",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "99",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 24),
                      )
                    ],
                  ),
                  Text(
                    "Watch List",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "99",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 24),
                      )
                    ],
                  ),
                  Text(
                    "Favorit Songs",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  )
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
