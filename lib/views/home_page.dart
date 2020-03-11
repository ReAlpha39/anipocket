import 'package:anipocket/widget/menu.dart';
import 'package:anipocket/widget/preview_most_popular.dart';
import 'package:anipocket/widget/preview_this_season.dart';
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
      drawer: Menu(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              PreviewMostPopular(),
              PreviewThisSeason()
            ]
          ),
        ),
      ),
    );
  }
}
