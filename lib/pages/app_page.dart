/*
*  app_page.dart
*  mlcoin_app 2020-04-02
*  mlcoin_app 2020-06-03
*
*  Created by [Allan Nava].
*  Copyright © 2020 [Allan Nava]. All rights reserved.
*/
///
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mlcoin_app/blocs/blocs.dart';
import 'package:mlcoin_app/pages/pages.dart';
///
import 'package:mlcoin_app/pages/scanner/scanner.dart';
import 'package:mlcoin_app/repositories/repositories.dart';
import 'package:mlcoin_app/widgets/organisms/ui/ui_organisms.dart';
///
///
class AppPage extends StatefulWidget {
  final MLRepository mlRepository;
  AppPage({Key key, this.mlRepository,}) : super(key: key);

  @override
  _AppPageState createState() => _AppPageState();
}
///
class _AppPageState extends State<AppPage> {
  ///
  /// x lo stack
  final List<Widget> pageList = List<Widget>();
  ///
  @override
  void initState() {
    pageList.add(_home());//scanner());
    pageList.add(_coins());//monetine());
    pageList.add(_settings());//settings());
    super.initState();
  }
  ///
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomBarBloc, AppTab>(
      builder: (context, activeTab) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBarStateless(
            activeTab: activeTab, 
            onTabSelected: (tab ) => BlocProvider.of<BottomBarBloc>(context).add(BottombarUpdated(tab))
          ),
          //body: body(activeTab),
          body: IndexedStack(
            index: activeTab.index,
            children: pageList,
          )
        );
      }
    ); 
  }
  ///
  Widget _home(){
    /*return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>( 
          create: (context) => HomeBloc(
          ),
        ),
      ],
      child: HomePage(),
    );*/
    return ScannerPage();
  }
  ///
  Widget _coins(){
    return CoinsPage();
  }
  ///
  Widget _settings(){
    return SettingsPage();
  }
  ///
}
///