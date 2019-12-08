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
        )
      ],
    );
  }
}
