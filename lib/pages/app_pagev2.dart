/*
*  app_pagev2.dart
*  
*  mlcoin_app 2020-06-01
*  mlcoin_app 2020-06-18
*
*  Created by [Filippo Fresilli & Allan Nava].
*  Updated by [Filippo Fresilli & Allan Nava]
*  Copyright © [MLCoin Team] 2020 . All rights reserved.
*/
//
import 'package:flutter/material.dart';
///
import 'package:mlcoin_app/pages/landing/splash.dart';
import 'package:mlcoin_app/pages/scanner/scanner.dart';
import 'package:mlcoin_app/pages/coins/coins.dart';
import 'package:mlcoin_app/pages/settings/settings.dart';
///
import 'package:mlcoin_app/repositories/repositories.dart';
import 'package:mlcoin_app/widgets/organisms/ui/bottom_barv2.dart';
//
//
class AppPage extends StatefulWidget {
  static const String id = 'app_page';
  final MLRepository mlRepository;
  AppPage({
    Key key,
    this.mlRepository,
  }) : super(key: key);

  @override
  _AppPageState createState() => _AppPageState();
}
///
class _AppPageState extends State<AppPage> {
  ///
  /// x lo stack
  final List<Widget> pageList = List<Widget>();
  bool splashViewed = false;
  int currentIndex = 0;
  ///
  @override
  void initState() {
    ///
    Future.delayed(const Duration(milliseconds: 900), () {
      setState(() {
        splashViewed = true;
      });
    });

    ///
    pageList.add(_home()); //scanner());
    pageList.add(_coins()); //monetine());
    pageList.add(_settings()); //settings());
    super.initState();
  }

  ///
  @override
  Widget build(BuildContext context) {
      if (splashViewed) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBarStateless(
            currentIndex: currentIndex,
            onTapNavigation: _onItemTapped
          ),
          body: IndexedStack(
            index: currentIndex,
            children: pageList,
          )
      );
      } else {
        return SplashPage();
      }
  }
  ///
  Widget _home() {
    return ScannerPage(mlRepository: widget.mlRepository);
  }
  ///
  Widget _coins() {
    return CoinsPage();
  }
  ///
  Widget _settings() {
    return SettingsPage();
  }
  ///
  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

}