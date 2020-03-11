import 'package:anipocket/app_theme.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class ThemeEvent extends Equatable {}

class ThemeChanged extends ThemeEvent {
  final AppTheme theme;

  ThemeChanged({
    @required this.theme
  });

  @override
  // TODO: implement props
  List<Object> get props => [];

}