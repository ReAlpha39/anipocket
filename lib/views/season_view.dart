import 'package:anipocket/redux/appstate.dart';
import 'package:anipocket/redux/store_season_list.dart';
import 'package:anipocket/redux/view_model.dart';
import 'package:anipocket/widget/CardAnime.dart';
import 'package:anipocket/widget/fab_season.dart';
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
          title: StoreConnector<AppState, ViewModel>(
            converter: (store) {
              return ViewModel(title: store.state.title);
            },
            builder: (context, viewModel) {
              return Text(
                viewModel.title,
                style: TextStyle(color: Colors.black),
              );
            },
          )),
      body: StoreConnector<AppState, ViewModel>(
        converter: (store) {
          return ViewModel(results: store.state.seasonAnime);
        },
        builder: (context, viewModel) {
          print(store.state.seasonAnime);
          return Container(
            child: store.state.seasonAnime == null
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    itemCount: viewModel.results.anime.length,
                    itemBuilder: (context, index) {
                      if (viewModel.results.anime[index].r18 == false) {
                        return CardAnime(anime: viewModel.results.anime[index]);
                      } else {
                        return Container();
                      }
                    },
                  ),
          );
        },
      ),
      floatingActionButton: FabSeason()
    );
  }
}
