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
import 'package:flutter_svg/flutter_svg.dart';

///
class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: AppColors.paletteGreyColor,
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: AppColors.paletteGreyColor, //Color.fromARGB(255, 0, 12, 24),
        ),
        child: Center(
          child: SvgPicture.asset('assets/images/ML_coin_logo.svg'),
        ),
      ),
    );
  }
}

///
