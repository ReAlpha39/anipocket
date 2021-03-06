import 'package:flutter/material.dart';

class PhotoProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        new Container(
          margin: new EdgeInsets.only(left: 0.0, top: 0.0),
          height: 150.0,
          width: 150.0,
          decoration: new BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://cdn.myanimelist.net/images/characters/8/303847.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(80.0),
            border: Border.all(
              color: Colors.white,
              width: 10.0,
            )
          ),
        )
      ],
    );
  }
}
