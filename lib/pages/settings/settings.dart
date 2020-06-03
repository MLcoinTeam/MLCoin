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
    return Container(
       child: Center(child: AtomText("settings")),
    );
  }
}