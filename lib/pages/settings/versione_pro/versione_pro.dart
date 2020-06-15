/*
*  settings.dart
*  mlcoin_app 2020-04-03
*  mlcoin_app 2020-06-13
*
*  Created by [Filippo Fresilli & Allan Nava].
*  Copyright © 2020 [MLCoinTeam]. All rights reserved.
*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mlcoin_app/utils/values/colors.dart';

///
///
class VersionProPage extends StatefulWidget {
  @override
  _VersionProPageState createState() => _VersionProPageState();
}

///
class _VersionProPageState extends State<VersionProPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppColors.primaryBackground,
      child: CupertinoNavigationBar(
        middle: Text('Passa a PR0'),
      ),
    );
  }
}

///
