/*
*  spaces.dart
*  mlcoin_app 2020-06-02.
*  mlcoin_app 2020-06-02
*
*  Created by [Filippo Fresilli & Allan Nava].
*  Updated by [Filippo Fresilli &  Allan Nava]
*  Copyright © 2020 [Filippo Fresilli &  Allan Nava]. All rights reserved.
*/
import 'package:flutter/material.dart';
import 'package:mlcoin_app/utils/values/values.dart';

///
class AtomSpace extends StatelessWidget {
  ///
  AtomSpace({this.padding = const EdgeInsets.all(Constants.SIZE_4)});

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

const kPaddingSettings = EdgeInsets.symmetric(
  horizontal: 10,
  vertical: 14,
);
