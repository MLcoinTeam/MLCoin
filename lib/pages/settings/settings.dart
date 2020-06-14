/*
*  settings.dart
*  mlcoin_app 2020-04-03
*  mlcoin_app 2020-06-13
*
*  Created by [Filippo Fresilli & Allan Nava].
*  Copyright © 2020 [Filippo Fresilli & Allan Nava]. All rights reserved.
*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mlcoin_app/widgets/atoms/atoms.dart';
import 'package:mlcoin_app/utils/values/colors.dart';
import 'package:mlcoin_app/widgets/organisms/ui/ui_organisms.dart';

///
class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

///
class _SettingsPageState extends State<SettingsPage> {
  ///
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
                      horizontal: 10,
                      vertical: 14,
                    ),
                    child: OrganismCard(
                      title: "Versione PRO",
                      subTitle:
                          "Sblocca tutte le caratteristiche PRO di questa app.",
                      icon: Icons.star,
                      onPressed: () {
                        print("pressed");
                      },
                      trailing: Icons.arrow_forward_ios,
                    )
                    /*Card(
                    elevation: 2,
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
                            leading: Icon(
                              Icons.star,
                              color: AppColors.paletteYellowColor,
                            ),
                            title: Text(
                              'Versione PRO',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            subtitle: Text(
                              'Sblocca tutte le caratteristiche PRO di questa app.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.paletteGreyColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),*/
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
                    horizontal: 10,
                    vertical: 14,
                  ),
                  child: Card(
                    elevation: 2,
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
                              'Blocca App',
                              color: Colors.black,
                            ),
                            subtitle: Text(
                              'Blocca l\'app con un codice di sicurezza.',
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
                    horizontal: 10,
                    vertical: 14,
                  ),
                  child: Card(
                    elevation: 2,
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
                            title: Text('Tema scuro',
                                style: TextStyle(
                                  color: Colors.black,
                                )),
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
                    horizontal: 10,
                    vertical: 14,
                  ),
                  child: Card(
                    elevation: 2,
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
                    horizontal: 10,
                    vertical: 14,
                  ),
                  child: Card(
                    elevation: 2,
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
                            title: Text(
                              'Contattaci',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.paletteGreyColor,
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
