/*
*  theme_state.dart
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
class ThemeState extends Equatable {
  final ThemeData theme;

  const ThemeState({ @required this.theme, }) 
      : assert(theme != null);

  @override
  List<Object> get props => [ theme ];
}
///
