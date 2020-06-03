/*
*  scanner.dart
*  mlcoin_app 2020-04-02
*  mlcoin_app 2020-06-03
*
*  Created by [Allan Nava].
*  Copyright © 2020 [Allan Nava]. All rights reserved.
*/
import 'package:flutter/material.dart';
import 'package:mlcoin_app/widgets/atoms/atoms.dart';
///
class ScannerPage extends StatefulWidget {
  ScannerPage({Key key}) : super(key: key);

  @override
  _ScannerPageState createState() => _ScannerPageState();
}
//
class _ScannerPageState extends State<ScannerPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(child: AtomText("scanner"),),
    );
  }
}