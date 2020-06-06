/*
*  splash.dart
*  mlcoin_app 2020-04-04
*  mlcoin_app 2020-06-06
*
*  Created by [Allan Nava].
*  Copyright © 2020 [Allan Nava]. All rights reserved.
*/
///
///
import 'package:flutter/material.dart';
import 'package:mlcoin_app/utils/values/values.dart';
import 'package:mlcoin_app/widgets/atoms/atoms.dart';
///
class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            color: AppColors.primaryBackground, //Color.fromARGB(255, 0, 12, 24),
        ),
        child: Center(
          child: AtomImage.localBox('assets/images/logo.jpg')
        ),
      )
    );
  }
}
///