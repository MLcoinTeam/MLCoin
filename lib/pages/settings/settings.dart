/*
*  scanner.dart
*  mlcoin_app 2020-04-03
*  mlcoin_app 2020-06-03
*
*  Created by [Filippo Fresilli & Allan Nava].
*  Copyright © 2020 [Filippo Fresilli & Allan Nava]. All rights reserved.
*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mlcoin_app/widgets/atoms/atoms.dart';
import 'package:mlcoin_app/utils/values/colors.dart';

///
class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

///
class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Color(0xffFFFFFF),
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            backgroundColor: AppColors.paletteGreyColor,
            largeTitle: Text(
              'Impostazioni',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 14,
                  ),
                  child: Card(
                    elevation: 5,
                    color: Colors.white,
                    child: InkWell(
                      splashColor: AppColors.paletteGreyColor,
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: AtomIcon(
                              Icons.star,
                              color: AppColors.paletteYellowColor,
                            ),
                            title: AtomText(
                              'Versione PRO',
                              color: Colors.black,
                            ),
                            subtitle: Text(
                              'Sblocca tutte le caratteristiche PRO di questa app.',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14,
                  ),
                  child: Text(
                    'Impostazioni App',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 14,
                  ),
                  child: Card(
                    elevation: 5,
                    color: Colors.white,
                    child: InkWell(
                      splashColor: AppColors.paletteGreyColor,
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            title: AtomText(
                              'Versione PRO',
                              color: Colors.black,
                            ),
                            subtitle: Text(
                              'Sblocca tutte le caratteristiche PRO di questa app.',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14,
                  ),
                  child: Text(
                    'Personalizzazione',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 14,
                  ),
                  child: Card(
                    elevation: 5,
                    color: Colors.white,
                    child: InkWell(
                      splashColor: AppColors.paletteGreyColor,
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            title: AtomText(
                              'Tema scuro',
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14,
                  ),
                  child: Text(
                    'Generale',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 14,
                  ),
                  child: Card(
                    elevation: 5,
                    color: Colors.white,
                    child: InkWell(
                      splashColor: AppColors.paletteGreyColor,
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            title: AtomText(
                              'Versione PRO',
                              color: Colors.black,
                            ),
                            subtitle: Text(
                              'Sblocca tutte le caratteristiche PRO di questa app.',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14,
                  ),
                  child: Text(
                    'Altro',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 14,
                  ),
                  child: Card(
                    elevation: 5,
                    color: Colors.white,
                    child: InkWell(
                      splashColor: AppColors.paletteGreyColor,
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            title: AtomText(
                              'Contattaci',
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
