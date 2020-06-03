/*
*  main.dart
*  
*  mlcoin_app 2020-06-01
*  mlcoin_app 2020-06-03
*
*  Created by [Allan Nava].
*  Updated by [Allan Nava]
*  Copyright © 2020 . All rights reserved.
*/
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
///
import 'package:mlcoin_app/pages/pages.dart';
import 'package:mlcoin_app/repositories/repositories.dart';
import 'package:mlcoin_app/simple_bloc_delegate.dart';
import 'package:mlcoin_app/utils/routes.dart';
///
import 'blocs/blocs.dart';
//
void main() {
  //
  final MLRepository mlRepository = MLRepository(
    apiClient: ApiClient( Dio( ) ),
  );
  ///
  BlocSupervisor.delegate = SimpleBlocDelegate();
  ///
  runApp(App( mlRepository : mlRepository ));
}
///
class App extends StatelessWidget{
  ///
  final MLRepository mlRepository;
  ///
  App({ Key key, @required this.mlRepository })
      : assert(mlRepository != null),
        super(key: key);
  ///
  ///
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, themeState) {
        return MaterialApp(
          title: 'ML Coin Live App',
          theme: themeState.theme,
          initialRoute: AppRoutes.home,
          routes: {
            AppRoutes.home : (context) {
              return MainScreen();
            },
            AppRoutes.login : (context) {
              return MainScreen();
            }
          }
        );
      }
    );
  }
}
///
