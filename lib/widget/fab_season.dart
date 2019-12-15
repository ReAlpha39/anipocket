import 'package:anipocket/redux/action.dart';
import 'package:anipocket/redux/appstate.dart';
import 'package:anipocket/redux/store.dart';
import 'package:anipocket/redux/view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FabSeason extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ViewModel>(
      converter: (store) {
        return ViewModel(title: store.state.title);
      }, builder: (context, viewModel) {
        return SpeedDial(
          animatedIcon: AnimatedIcons.menu_close,
          animatedIconTheme: IconThemeData(size: 22.0),
          curve: Curves.bounceIn,
          overlayOpacity: 0,
          shape: CircleBorder(),
          children: [
            SpeedDialChild(
              elevation: 6,
              child: Icon(FontAwesomeIcons.leaf, size: 16,),
              backgroundColor: Colors.deepPurpleAccent[700],
              label: 'Fall',
              labelStyle: TextStyle(fontSize: 16.0),
              onTap: () => store.dispatch(getSeasonAnime(season: 'Fall'))
            ),
            SpeedDialChild(
              elevation: 6,
              child: Icon(Icons.wb_sunny),
              backgroundColor: Colors.deepPurpleAccent[700],
              label: 'Summer',
              labelStyle: TextStyle(fontSize: 16.0),
              onTap: () => store.dispatch(getSeasonAnime(season: 'Summer'))
            ),
            SpeedDialChild(
              elevation: 6,
              child: Icon(Icons.local_florist),
              backgroundColor: Colors.deepPurpleAccent[700],
              label: 'Spring',
              labelStyle: TextStyle(fontSize: 16),
              onTap: () => store.dispatch(getSeasonAnime(season: 'Spring'))
            ),
            SpeedDialChild(
              elevation: 6,
              child: Icon(FontAwesomeIcons.snowflake, size: 20,),
              backgroundColor: Colors.deepPurpleAccent[700],
              label: 'Winter',
              labelStyle: TextStyle(fontSize: 16.0),
              onTap: () => store.dispatch(getSeasonAnime(season: 'Winter'))
            ),
          ],
        );
      }
    );
  }
}
