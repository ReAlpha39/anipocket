import 'package:anipocket/models/request_type/request_type.dart';
import 'package:anipocket/models/season/season_anime.dart';
import 'package:equatable/equatable.dart';
import "package:meta/meta.dart";

abstract class HomeState extends Equatable {
  final List<String> listUrl;
  HomeState({this.listUrl});
}

class HomeInitial extends HomeState {

  @override
  List<Object> get props => [];
}

class HomeLoading extends HomeState {

  @override
  List<Object> get props => [];
}

class HomeLoaded extends HomeState {
  final Tops tops;
  final SeasonAnime seasonAnime;
  final List<String> listUrl;
  HomeLoaded({
    @required this.tops,
    @required this.seasonAnime,
    @required this.listUrl});
  @override
  List<Object> get props => null;
}

class HomeError extends HomeState {
  final String message;
  HomeError({@required this.message});
  @override
  List<Object> get props => null;
}