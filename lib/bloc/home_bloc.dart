import 'dart:io';

import 'package:anipocket/bloc/home_event.dart';
import 'package:anipocket/bloc/home_state.dart';
import 'package:anipocket/models/models.dart';
import 'package:anipocket/repositories/jikan_api.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final JikanApi jikanApi;
  HomeBloc({@required this.jikanApi});

  @override
  HomeState get initialState => HomeInitial();

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is FetchData) {
      yield HomeLoading();
      try {
        List<String> listUrl = [];
        final tops = await jikanApi.getTop(TopType.anime);
        final seasonAnime = await jikanApi.getSeasonAnime();
        if (seasonAnime != null) {
          for (int i = 0; i < 5; i++) {
            int idAnime = seasonAnime.anime[i].malId;
            AnimeInfo animeInfo = await jikanApi.getAnimeInfo(idAnime);
            if (animeInfo == null) {
              yield HomeError(message: "Connection Error");
            } else {
              String urlPV = animeInfo.trailerUrl;
              if (urlPV != null) {
                listUrl.add(urlPV);
              }
            }
          }
        }
        if (tops == null || seasonAnime == null) {
          yield HomeError(message: "Connection Error");
        } else {
          yield HomeLoaded(tops: tops, seasonAnime: seasonAnime, listUrl: listUrl);
        }
      } catch (e) {}
    }
  }
}
