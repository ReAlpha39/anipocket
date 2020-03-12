import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PreviewPV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
            child: Text("Promotional Video",
                style: GoogleFonts.raleway(
                    textStyle:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w400))),
          ),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 1,
              itemBuilder: (context, index) {
                return Container();
              },
            ),
          )
        ],
      ),
    );
  }
}
