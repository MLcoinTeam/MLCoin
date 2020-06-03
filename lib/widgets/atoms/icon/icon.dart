/*
*  icon.dart
*  mlcoin_app 2020-04-02
*  mlcoin_app 2020-06-03
*
*  Created by [Allan Nava].
*  Copyright © 2020 [Allan Nava]. All rights reserved.
*/
///
import 'package:flutter/material.dart';
import 'package:mlcoin_app/utils/values/values.dart';
///
class AtomIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  const AtomIcon( this.icon, { 
    this.color = AppColors.primary1
   });
  ///
  const AtomIcon.bottomBar( this.icon, { 
    this.color = AppColors.primary1
   });
  ///
  @override
  Widget build(BuildContext context) {
    return new Icon(
      this.icon,
      color: this.color
    );
  }
}
