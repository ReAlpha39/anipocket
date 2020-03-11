import 'package:anipocket/models/request_type/request_type.dart';
import 'package:equatable/equatable.dart';
import "package:meta/meta.dart";

abstract class HomeState extends Equatable {}

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
  HomeLoaded({@required this.tops});
  @override
  List<Object> get props => null;
}

class HomeError extends HomeState {
  final String message;
  HomeError({@required this.message});
  @override
  List<Object> get props => null;
}