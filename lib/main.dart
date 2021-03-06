/*
*  main.dart
*  
*  mlcoin_app 2020-06-01
*  mlcoin_app 2020-06-04
*
*  Created by [Allan Nava].
*  Updated by [Allan Nava]
*  Copyright © 2020 . All rights reserved.
*/
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mlcoin_app/pages/landing/landing.dart';
import 'package:mlcoin_app/pages/landing/splash.dart';

///
import 'package:mlcoin_app/pages/main_screen.dart';
import 'package:mlcoin_app/pages/app_pagev2.dart';
import 'package:mlcoin_app/repositories/repositories.dart';
import 'package:mlcoin_app/simple_bloc_delegate.dart';
import 'package:mlcoin_app/utils/routes.dart';

///
import 'package:mlcoin_app/pages/coins/coins.dart';
import 'package:mlcoin_app/pages/scanner/scanner.dart';
import 'package:mlcoin_app/pages/settings/settings.dart';

import 'package:mlcoin_app/pages/settings/versione_pro/versione_pro.dart';

///
import 'package:camera/camera.dart';
import 'blocs/blocs.dart';

//
List<CameraDescription> cameras;
Future<void> main() async {
  //
  try {
    WidgetsFlutterBinding.ensureInitialized();
    cameras = await availableCameras();
  } on CameraException catch (e) {
    print("e.code=${e.code} | e.description=${e.description}");
    //logError(e.code, e.description);
  }
  final MLRepository mlRepository = MLRepository(
    apiClient: ApiClient(Dio()),
    cameras: cameras,
  );

  ///
  BlocSupervisor.delegate = SimpleBlocDelegate();

  ///
  runApp(BlocProvider(
    create: (context) {
      return ThemeBloc();
    },
    child: App(
      mlRepository: mlRepository,
    ),
  ));
}

///
class App extends StatelessWidget {
  ///
  final MLRepository mlRepository;

  ///
  App({Key key, @required this.mlRepository})
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
            MainPage.id: (context) => MainPage(),
            LandingPage.id: (context) => LandingPage(),
            SplashPage.id: (context) => SplashPage(),

            ///
            ScannerPage.id: (context) => ScannerPage(),
            CoinsPage.id: (context) => CoinsPage(),
            SettingsPage.id: (context) => SettingsPage(),

            ///
            VersionProPage.id: (context) => VersionProPage(),
            AppRoutes.home: (context) {
              return MultiBlocProvider(
                providers: [
                  BlocProvider<BottomBarBloc>(
                    create: (context) => BottomBarBloc(),
                  ),
                ],
                child: AppPage(
                  mlRepository: mlRepository,
                ),
              );
              //return MainPage();
            },
          },
        );
      },
    );
  }
}

///
