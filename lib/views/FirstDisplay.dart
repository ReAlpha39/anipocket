import 'package:anipocket/widget/Icon_Apps.dart';
import 'package:flutter/material.dart';

class FirstDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('Assets/BACKGROUND.jpg'), fit: BoxFit.cover),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconApps(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 80.0),
                  child: Text(
                    "AniPocket",
                    style: TextStyle(fontSize: 30.0),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
