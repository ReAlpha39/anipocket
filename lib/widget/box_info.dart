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
        ),
      ]),
    );
  }
}
