import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FabSeason extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SpeedDial(
          animatedIcon: AnimatedIcons.menu_close,
          animatedIconTheme: IconThemeData(size: 22.0),
          closeManually: false,
          curve: Curves.bounceIn,
          overlayOpacity: 0,
          elevation: 8.0,
          shape: CircleBorder(),
          children: [
            SpeedDialChild(
              child: Icon(FontAwesomeIcons.leaf, size: 16,),
              backgroundColor: Colors.red,
              label: 'Fall',
              labelStyle: TextStyle(fontSize: 18.0),
              onTap: () => print('FIRST CHILD')
            ),
            SpeedDialChild(
              child: Icon(Icons.wb_sunny),
              backgroundColor: Colors.blue,
              label: 'Summer',
              labelStyle: TextStyle(fontSize: 18.0),
              onTap: () => print('SECOND CHILD'),
            ),
            SpeedDialChild(
              child: Icon(Icons.local_florist),
              backgroundColor: Colors.green,
              label: 'Spring',
              labelStyle: TextStyle(fontSize: 18.0),
              onTap: () => print('THIRD CHILD'),
            ),
            SpeedDialChild(
              child: Icon(FontAwesomeIcons.snowflake, size: 20,),
              backgroundColor: Colors.green,
              label: 'WInter',
              labelStyle: TextStyle(fontSize: 18.0),
              onTap: () => print('FOURTH CHILD'),
            ),
          ],
        );
  }
}