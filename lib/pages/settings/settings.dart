/*
*  scanner.dart
*  mlcoin_app 2020-04-03
*  mlcoin_app 2020-06-03
*
*  Created by [Allan Nava].
*  Copyright © 2020 [Allan Nava]. All rights reserved.
*/
import 'package:flutter/material.dart';
import 'package:mlcoin_app/widgets/atoms/atoms.dart';
import 'package:mlcoin_app/utils/values/colors.dart';

///
class SettingsPage extends StatefulWidget {
  SettingsPage({Key key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

///
class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              [],
            ),
          ),
        ],
      ),
    );
  }
}
