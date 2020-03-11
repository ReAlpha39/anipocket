import 'package:anipocket/widget/menu.dart';
import 'package:anipocket/widget/preview_most_popular.dart';
import 'package:anipocket/widget/preview_this_season.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('AniPocket', style: GoogleFonts.raleway(textStyle: TextStyle(color: Colors.white))),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 7, 48, 66)
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
