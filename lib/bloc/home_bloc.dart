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
    yield HomeLoading();
    if (event is FetchData) {
      yield HomeLoading();
      try {
        final tops = await jikanApi.getTop(TopType.anime);
        final seasonAnime = await jikanApi.getSeasonAnime();
        if (tops == null) {
          yield HomeError(message: "Connection Error");
        } else {
          yield HomeLoaded(tops: tops, seasonAnime: seasonAnime);
        }
      } catch (e) {}
    }
  }
}
