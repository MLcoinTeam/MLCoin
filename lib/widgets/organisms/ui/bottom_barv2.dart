/*
*  bottom_barv2.dart
*  
*  mlcoin_app 2020-06-01
*  mlcoin_app 2020-06-17
*
*  Created by [Filippo Fresilli & Allan Nava].
*  Updated by [Filippo Fresilli & Allan Nava]
*  Copyright © 2020 [MLCoin Team]  . All rights reserved.
*/
//
import 'package:flutter/material.dart';
//
//
class BottomNavigationBarStateless extends StatelessWidget {
  ///
  BottomNavigationBarStateless({
    @required this.currentIndex,
    @required this.onTapNavigation,
  });

  ///
  final int currentIndex;
  final Function onTapNavigation;

  ///
  @override
  Widget build(BuildContext context) {
    //
    return BottomNavigationBar(
      currentIndex: currentIndex, // this will be set when a new tab is tapped
      onTap: this.onTapNavigation,
      //key: MyKeys.tabs,
      unselectedItemColor: AppColors.paletteGreyColor,
      selectedItemColor: AppColors.paletteBlueColor,
      type: BottomNavigationBarType.fixed,
      items: [
        // Feed Page
        BottomNavigationBarItem(
          icon: AtomIcon.bottomBar(
                Icons.center_focus_strong
              ), //new Icon(FontAwesomeIcons.home),
          title: new AtomText.bottomBarTitle("Scanner"),
        ),
        // Search Page
        BottomNavigationBarItem(
          icon: AtomIcon.bottomBar(
            Icons.photo_library,
            //FontAwesomeIcons.calendar,
          ),
          title: new AtomText.bottomBarTitle("Monete"),
        ),
        // User Page
        BottomNavigationBarItem(
          icon: AtomIcon.bottomBar(
            Icons.settings,
          ),
          title: new AtomText.bottomBarTitle("Impostazioni"),
        ),
      ],
    );
  }
}
