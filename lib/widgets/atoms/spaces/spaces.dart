/*
*  spaces.dart
*  mlcoin_app 2020-06-02.
*  mlcoin_app 2020-06-02
*
*  Created by [Allan Nava].
*  Updated by [Allan Nava]
*  Copyright © 2020 [Allan Nava]. All rights reserved.
*/
import 'package:flutter/material.dart';
import 'package:mlcoin_app/utils/values/values.dart';
///
class AtomSpace extends StatelessWidget {
  ///
  AtomSpace({this.padding = const EdgeInsets.all( Constants.SIZE_4 )});
  ///
  final EdgeInsets padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
    );
  }
  ///
}
//