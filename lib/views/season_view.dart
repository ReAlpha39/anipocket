import 'package:anipocket/redux/appstate_season_list.dart';
import 'package:anipocket/redux/store_season_list.dart';
import 'package:anipocket/redux/view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class SeasonView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[100],
        title: Text(
          'This Season',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: StoreConnector<AppStateSeasonList, ViewModel>(
        converter: (store) {
          return ViewModel(results: store.state.seasonAnime);
        },
        builder: (context, viewModel) {
          return Container();
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit),
        onPressed: (){},
      ),
    );
  }
}