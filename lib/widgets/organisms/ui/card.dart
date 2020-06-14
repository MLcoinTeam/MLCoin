/*
*  card.dart
*  
*  mlcoin_app 2020-06-04
*  mlcoin_app 2020-06-13
*
*  Created by [Filippo Fresilli & Allan Nava].
*  Updated by [Filippo Fresilli & Allan Nava]
*  Copyright © [MLCoinTeam] 2020 . All rights reserved.
*/
//
import 'package:flutter/material.dart';
import 'package:mlcoin_app/utils/values/values.dart';
import 'package:mlcoin_app/widgets/atoms/atoms.dart';

///
/// da finire usando le variabili dinamiche!
class OrganismCard extends StatelessWidget {
  ///
  final String title;
  final String subTitle;
  final Function onPressed;
  final IconData icon;
  final IconData trailing;
  //final AtomIcon icon;
  // andrebbero fatti altri initializer tipo atomtext
  OrganismCard({
    this.title,
    this.onPressed,
    this.subTitle,
    this.icon,
    this.trailing,
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
        elevation: 2,
        color: Colors.white,
        child: InkWell(
          splashColor: AppColors.paletteGreyColor,
          onTap: this.onPressed,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: this.icon != null
                    ? Icon(
                        this.icon,
                        color: AppColors.paletteYellowColor,
                      )
                    : null,
                title: AtomText(
                  this.title,
                  color: Colors.black,
                ),
                subtitle: this.subTitle != null
                    ? AtomText.subTitleCard(
                        this.subTitle,
                        //'Sblocca tutte le caratteristiche PRO di questa app.',
                      )
                    : null,
                trailing: this.trailing != null
                    ? Icon(
                        this.trailing,
                        color: AppColors.paletteGreyColor,
                      )
                    : null,
              ),
            ],
          ),
        ));
  }
}
