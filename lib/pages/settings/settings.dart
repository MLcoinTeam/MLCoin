/*
*  scanner.dart
*  mlcoin_app 2020-04-03
*  mlcoin_app 2020-06-03
*
*  Created by [Filippo Fresilli & Allan Nava].
*  Copyright © 2020 [Filippo Fresilli & Allan Nava]. All rights reserved.
*/
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
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            pinned: true,
            expandedHeight: 140.0,
            backgroundColor: AppColors.paletteGreyColor,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 20,
              ),
              title: Text(
                'Impostazioni',
                style: TextStyle(
                  fontFamily: "Roboto",
                ),
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
                  child: AtomText(
                    'Impostazioni App',
                    color: Colors.black,
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
                  child: AtomText(
                    'Personalizzazione',
                    color: Colors.black,
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
                  child: AtomText(
                    'Generale',
                    color: Colors.black,
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
                  child: AtomText(
                    'Altro',
                    color: Colors.black,
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
