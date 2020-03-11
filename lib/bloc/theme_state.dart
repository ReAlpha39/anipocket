import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ThemeState extends Equatable {
  final ThemeData themeData;
  final bool isDark;

  ThemeState({@required this.themeData, @required this.isDark});


  @override
  // TODO: implement props
  List<Object> get props => [themeData, isDark];
}