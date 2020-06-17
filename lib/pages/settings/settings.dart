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
import 'package:mlcoin_app/pages/pages.dart';
import 'package:mlcoin_app/widgets/atoms/atoms.dart';
import 'package:mlcoin_app/utils/values/colors.dart';
import 'package:mlcoin_app/widgets/organisms/ui/ui_organisms.dart';

///
const List<String> languagesList = [
  'Italiano',
  'Francese',
  'Inglese',
];

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

///
class _SettingsPageState extends State<SettingsPage> {
  //Update the default language to Italiano, the first item in the languagesList.
  String selectedLanguage = 'Italiano';
  bool darkTheme = false;

  ///
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: kBgSemiWhite,
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            backgroundColor: AppColors.paletteGreyColor,
            largeTitle: Text(
              'Impostazioni',
              style: TextStyle(
                color: AppColors.primary1,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: kPaddingSettings,
                  child: Card(
                    elevation: 2,
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.star,
                          color: AppColors.paletteYellowColor,
                        ),
                        title: Text(
                          'Versione PRO',
                          style: kTitleCardTextStyle,
                        ),
                        subtitle: Text(
                          'Sblocca tutte le funzionalità PRO di questa app.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        trailing: kGreyArrowRight,
                      ),
                    ),
                  ),
                ),
                TitleSectionSettings(
                  title: 'Impostazioni App',
                ),
                Container(
                  padding: kPaddingSettings,
                  child: Card(
                    elevation: 2,
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              'Blocca App',
                              style: kTitleCardTextStyle,
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
                TitleSectionSettings(
                  title: 'Personalizzazione',
                ),
                Container(
                  padding: kPaddingSettings,
                  child: Card(
                    elevation: 2,
                    color: Colors.white,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          onTap: () {
                            print('Card tapped.');
                          },
                          title: Text(
                            'Lingua',
                            style: kTitleCardTextStyle,
                          ),
                          trailing: Text(
                            selectedLanguage,
                            style: TextStyle(
                              color: AppColors.paletteGreyColor,
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'Tema scuro',
                            style: kTitleCardTextStyle,
                          ),
                          trailing: CupertinoSwitch(
                            value: darkTheme,
                            onChanged: (bool newValue) {
                              setState(() {
                                darkTheme = newValue;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                TitleSectionSettings(
                  title: 'Generale',
                ),
                Container(
                  padding: kPaddingSettings,
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
                          ListTile(
                            title: Text(
                              'Versione PRO',
                              style: kTitleCardTextStyle,
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
                TitleSectionSettings(
                  title: 'Altro',
                ),
                Container(
                  padding: kPaddingSettings,
                  child: Card(
                    elevation: 2,
                    color: Colors.white,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          onTap: () {
                            print('Card tapped.');
                          },
                          title: Text(
                            'Inviaci un feedback',
                            style: kTitleCardTextStyle,
                          ),
                          trailing: kGreyArrowRight,
                        ),
                        ListTile(
                          onTap: () {
                            print('Card tapped.');
                          },
                          title: Text(
                            'Valuta l\'app',
                            style: kTitleCardTextStyle,
                          ),
                          trailing: kGreyArrowRight,
                        ),
                        ListTile(
                          onTap: () {
                            print('Card tapped.');
                          },
                          title: Text(
                            'Informativa sulla Privacy',
                            style: kTitleCardTextStyle,
                          ),
                          trailing: kGreyArrowRight,
                        ),
                        ListTile(
                          onTap: () {
                            print('Card tapped.');
                          },
                          title: Text(
                            'Termini di Utilizzo',
                            style: kTitleCardTextStyle,
                          ),
                          trailing: kGreyArrowRight,
                        ),
                      ],
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

class TitleSectionSettings extends StatelessWidget {
  TitleSectionSettings({@required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14,
      ),
      child: Text(
        title,
        style: kTitleSectionTextStyle,
      ),
    );
  }
}
