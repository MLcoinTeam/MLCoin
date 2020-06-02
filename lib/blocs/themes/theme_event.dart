/*
*  theme_event.dart
*  
*  mlcoin_app 2020-06-01
*  mlcoin_app 2020-06-02
*
*  Created by [Allan Nava].
*  Updated by [Allan Nava]
*  Copyright © 2020 . All rights reserved.
*/
part of 'theme_bloc.dart';
///
abstract class ThemeEvent extends Equatable {
  const ThemeEvent();
}
///
enum ThemeCondition {
  dark,
  light,
}
///
class ThemeChanged extends ThemeEvent {
  final ThemeCondition condition;
  ///
  const ThemeChanged({@required this.condition}) : assert(condition != null);
  ///
  @override
  List<Object> get props => [condition];
}
///

