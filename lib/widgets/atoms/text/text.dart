/*
*  text.dart
*  mlcoin_app 2020-04-02
*  mlcoin_app 2020-06-03
*
*  Created by [Allan Nava].
*  Copyright © 2020 [Allan Nava]. All rights reserved.
*/
import 'package:flutter/material.dart';

///
import 'package:mlcoin_app/utils/values/values.dart';

///
///
class AtomText extends StatelessWidget {
  // text with title simple
  const AtomText(this.title,
      {this.textAlign = TextAlign.left,
      this.color = AppColors.primary1,
      this.size = Constants.SIZE_18,
      this.fontWeight})
      : assert(textAlign != null);
  // appbar text
  const AtomText.appbar(this.title,
      {this.textAlign = TextAlign.center,
      this.color = AppColors.primary1,
      this.size = Constants.SIZE_14,
      this.fontWeight})
      : assert(textAlign != null);
  // text for description field
  const AtomText.description(this.title,
      {this.textAlign = TextAlign.justify,
      this.color = AppColors.primary1,
      this.size = Constants.SIZE_12,
      this.fontWeight
    })
      : assert(textAlign != null);
  //
  const AtomText.userFullName(this.title,
      {this.textAlign = TextAlign.left,
      this.color = AppColors.primary2,
      this.size = Constants.SIZE_20,
      this.fontWeight})
      : assert(textAlign != null);

  ///
  // text for bottom
  const AtomText.bottomBarTitle(this.title,
      {this.textAlign = TextAlign.justify,
      this.color,
      //this.fontWeight = FontWeight.w400,
      this.size = Constants.SIZE_12,
      this.fontWeight})
      : assert(textAlign != null);
  //
  // text for bottom
  const AtomText.subTitleCard(this.title,
      {this.textAlign = TextAlign.justify,
      this.color = Colors.black,
      //this.fontWeight = FontWeight.w400,
      this.size = Constants.SIZE_12,
      this.fontWeight
    })
      : assert(textAlign != null);
  //
  // text for bottom
  const AtomText.titleCard(this.title,
      {this.textAlign = TextAlign.justify,
      this.color = Colors.black,
      //this.fontWeight = FontWeight.w400,
      this.size = Constants.SIZE_14,
      this.fontWeight = FontWeight.w600 })
      : assert(textAlign != null);
  //
  final String title;
  final TextAlign textAlign;
  final Color color;
  final double size;
  final FontWeight fontWeight;
  //
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: this.fontWeight != null ? TextStyle(color: color, fontSize: size, fontWeight: this.fontWeight) : TextStyle(color: color, fontSize: size, ) ,
    );
  }
}

///
