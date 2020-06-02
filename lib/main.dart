/*
*  main.dart
*  
*  mlcoin_app 2020-06-01
*  mlcoin_app 2020-06-02
*
*  Created by [Allan Nava].
*  Updated by [Allan Nava]
*  Copyright © 2020 . All rights reserved.
*/
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
///
import 'blocs/blocs.dart';
//
void main() {
  //runApp();
}
///
class App extends StatelessWidget{
  //
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, themeState) {
        return MaterialApp(
          title: 'JustFit Live App',
          //theme: themeState.theme,

        );
      }
    );
  }
}
///
