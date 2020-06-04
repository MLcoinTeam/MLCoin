/*
*  card.dart
*  
*  mlcoin_app 2020-06-04
*  mlcoin_app 2020-06-04
*
*  Created by [Allan Nava].
*  Updated by [Allan Nava]
*  Copyright © 2020 . All rights reserved.
*/
//
import 'package:flutter/material.dart';
import 'package:mlcoin_app/widgets/atoms/atoms.dart';
///
class OrganismCard extends StatelessWidget {
  final String title;
  final Function onPressed;
  //final AtomIcon icon;
  // andrebbero fatti altri initializer tipo atomtext

  const OrganismCard({
    Key key, 
    this.title,
    this.onPressed,
  }) : super(key: key);
  //
  // Card with icon 
  /*const OrganismCard.icon(
      this.title,
      {this.textAlign = TextAlign.center,})
      : assert(textAlign != null);*/

  @override
  Widget build(BuildContext context) {
    ///
    return ListTile(
      title: AtomText(title),
      onLongPress: onPressed,
    );
  }
}