import 'package:anipocket/widget/Icon_Apps.dart';
import 'package:flutter/material.dart';

class FirstDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('Assets/BACKGROUND.jpg'),
                      fit: BoxFit.cover
                      ),
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              IconApps(),
            ],),),
    ));
  }
}