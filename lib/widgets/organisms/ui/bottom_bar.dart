/*
*  main_screen.dart
*  
*  mlcoin_app 2020-06-01
*  mlcoin_app 2020-06-03
*
*  Created by [Allan Nava].
*  Updated by [Allan Nava]
*  Copyright © 2020 . All rights reserved.
*/
//
import 'package:flutter/material.dart';

///
import 'package:mlcoin_app/blocs/blocs.dart';
import 'package:mlcoin_app/widgets/atoms/atoms.dart';
import 'package:mlcoin_app/utils/values/colors.dart';

///
class BottomNavigationBarStateless extends StatelessWidget {
  ///
  BottomNavigationBarStateless({
    @required this.activeTab,
    @required this.onTabSelected,
  });

  ///
  final AppTab activeTab;
  final Function(AppTab) onTabSelected;

  ///
  @override
  Widget build(BuildContext context) {
    //
    return BottomNavigationBar(
      //currentIndex: currentIndex, // this will be set when a new tab is tapped
      //onTap: this.onTapNavigation,
      //key: MyKeys.tabs,
      unselectedItemColor: AppColors.paletteGreyColor,
      selectedItemColor: AppColors.paletteBlueColor,
      type: BottomNavigationBarType.fixed,
      currentIndex: AppTab.values.indexOf(activeTab),
      onTap: (index) => onTabSelected(AppTab.values[index]),
      items: [
        // Feed Page
        BottomNavigationBarItem(
          icon: AtomIcon.bottomBar(
              //FontAwesomeIcons.home,
              Icons.center_focus_strong), //new Icon(FontAwesomeIcons.home),
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
            //FontAwesomeIcons.americanSignLanguageInterpreting,
          ),
          title: new AtomText.bottomBarTitle("Impostazioni"),
        ),
      ],
    );
  }
}
