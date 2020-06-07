/*
*  card.dart
*  
*  mlcoin_app 2020-06-04
*  mlcoin_app 2020-06-07
*
*  Created by [Allan Nava].
*  Updated by [Allan Nava]
*  Copyright © 2020 . All rights reserved.
*/
//
import 'package:flutter/material.dart';
import 'package:mlcoin_app/utils/values/values.dart';
import 'package:mlcoin_app/widgets/atoms/atoms.dart';
///
/// da finire usando le variabili dinamiche!
class OrganismCard extends StatelessWidget {
  final String title;
  final Function onPressed;
  //final AtomIcon icon;
  // andrebbero fatti altri initializer tipo atomtext

  const OrganismCard({
    this.title,
    this.onPressed,
  });
  //
  // Card with icon
  /*const OrganismCard.icon(
      this.title,
      {this.textAlign = TextAlign.center,})
      : assert(textAlign != null);*/

  @override
  Widget build(BuildContext context) {
    ///
    return Card(
      elevation: 5,
      color: Colors.white,
      child: InkWell(
        splashColor: AppColors.paletteGreyColor,
        onTap: () {
          print('Card tapped.');
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              title: AtomText(
                'Versione PRO',
                color: Colors.black,
              ),
              subtitle: Text(
                'Sblocca tutte le caratteristiche PRO di questa app.',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
