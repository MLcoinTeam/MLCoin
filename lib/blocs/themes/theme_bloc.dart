/*
*  theme_bloc.dart
*  
*  mlcoin_app 2020-06-01
*  mlcoin_app 2020-06-03
*
*  Created by [Allan Nava].
*  Updated by [Allan Nava]
*  Copyright © 2020 . All rights reserved.
*/
import 'dart:async';
///
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:mlcoin_app/utils/values/values.dart';
///
part 'theme_event.dart';
part 'theme_state.dart';
///
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  @override
  ThemeState get initialState =>  ThemeState(
    theme: darkTheme,
  );

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    if (event is ThemeChanged) {
      yield _mapThemeData(event.condition);
    }
  }
  ThemeState _mapThemeData(ThemeCondition condition) {
    if (condition == ThemeCondition.dark ){
      return ThemeState(
        theme: darkTheme,
      );
    }else{
      return ThemeState(
        theme: lightTheme,
      );
    }
  }

}

/// ========================== THEMES STUFF ============================
///
final ThemeData darkTheme   = _buildDarkTheme();
final ThemeData lightTheme  = _buildLightTheme();
///
TextTheme _buildTextTheme(TextTheme base) {
  return base.copyWith(
    headline1: base.headline1.copyWith(
      fontFamily: 'Roboto',
      color: AppColors.primary1
    ),
    headline2: base.headline2.copyWith(
      fontFamily: 'Roboto',
    ),
    headline3: base.headline3.copyWith(
      fontFamily: 'Roboto',
    ),
    headline4: base.headline4.copyWith(
      fontFamily: 'Roboto',
    ),
    headline5: base.headline5.copyWith(
      fontFamily: 'Roboto',
    ),
    headline6: base.headline6.copyWith(
      fontFamily: 'Roboto',
    ),
    bodyText1: base.bodyText1.copyWith(
      fontFamily: 'Roboto',
    ),
    bodyText2: base.bodyText2.copyWith(
      fontFamily: 'Roboto',
    ),
    caption: base.caption.copyWith(
      fontFamily: 'Roboto',
    ),
    button: base.button.copyWith(
      fontFamily: 'Roboto',
    ),
    subtitle2: base.subtitle2.copyWith(
      fontFamily: 'Roboto',
    ),
    overline: base.overline.copyWith(
      fontFamily: 'Roboto',
    ),
    /*headline6: base.headline6.copyWith(
      fontFamily: 'Roboto',
    ),*/
  );
}
/// - Dark Theme
/// 
ThemeData _buildDarkTheme() {
  ///
  final ThemeData base          = ThemeData.dark();
  final ColorScheme colorScheme = const ColorScheme.dark().copyWith(
    primary: AppColors.primaryBackground, //ColorAssets.kIconAndNavigation,
    secondary: AppColors.primaryBackground,
    //secondaryVariant: ColorAssets.kIconAndNavigation,
  );
  ///
  return base.copyWith(
    appBarTheme: AppBarTheme(color: AppColors.primaryBackground, brightness: Brightness.light),
    scaffoldBackgroundColor: AppColors.primaryBackground,
    textTheme: _buildTextTheme(base.textTheme),
    primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildTextTheme(base.accentTextTheme),
    // sets the background color of the `BottomNavigationBar`
    canvasColor: AppColors.primary1,
    // sets the active color of the `BottomNavigationBar` if `Brightness` is light
    primaryColor: AppColors.primary1,
    accentColor: AppColors.primary1,
    ///
    iconTheme: base.iconTheme.copyWith(
      color: AppColors.primaryBackground,
    ),
    primaryIconTheme: base.primaryIconTheme.copyWith(
      color: AppColors.primaryBackground,
    ),
    accentIconTheme: base.primaryIconTheme.copyWith(
      color: AppColors.primaryBackground,
    ),
    colorScheme: colorScheme,
    /*primaryColor: ColorAssets.kIconAndNavigation,
    buttonColor: ColorAssets.kIconAndNavigation,
    indicatorColor: ColorAssets.kIconAndNavigation,
    splashColor: Colors.white24,
    splashFactory: InkRipple.splashFactory,
    accentColor: ColorAssets.kIconAndNavigation,
    canvasColor: ColorAssets.kWhite,
    scaffoldBackgroundColor: ColorAssets.background,
    backgroundColor: ColorAssets.background,
    errorColor: ColorAssets.kRed,*/
    buttonTheme: ButtonThemeData(
      colorScheme: colorScheme,
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
/// - Light Theme
ThemeData _buildLightTheme() {
  final ThemeData base          = ThemeData.light();
  final ColorScheme colorScheme = const ColorScheme.light().copyWith(
    primary: AppColors.primaryBackground, //ColorAssets.kIconAndNavigation,
    secondary: AppColors.primaryBackground,
    //secondaryVariant: ColorAssets.kIconAndNavigation,
  );
  return base.copyWith(
    scaffoldBackgroundColor: AppColors.primaryBackground,
    textTheme: _buildTextTheme(base.textTheme),
    primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildTextTheme(base.accentTextTheme),
    // sets the background color of the `BottomNavigationBar`
    canvasColor: AppColors.primary1,
    // sets the active color of the `BottomNavigationBar` if `Brightness` is light
    primaryColor: AppColors.primary1,
    accentColor: AppColors.primary1,
    ///
    iconTheme: base.iconTheme.copyWith(
      color: AppColors.primaryBackground,
    ),
    primaryIconTheme: base.primaryIconTheme.copyWith(
      color: AppColors.primaryBackground,
    ),
    accentIconTheme: base.primaryIconTheme.copyWith(
      color: AppColors.primaryBackground,
    ),
    colorScheme: colorScheme,
    /*primaryColor: ColorAssets.kIconAndNavigation,
    buttonColor: ColorAssets.kIconAndNavigation,
    indicatorColor: ColorAssets.kIconAndNavigation,
    splashColor: Colors.white24,
    splashFactory: InkRipple.splashFactory,
    accentColor: ColorAssets.kIconAndNavigation,
    canvasColor: ColorAssets.kWhite,
    scaffoldBackgroundColor: ColorAssets.background,
    backgroundColor: ColorAssets.background,
    errorColor: ColorAssets.kRed,*/
    buttonTheme: ButtonThemeData(
      colorScheme: colorScheme,
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
///
///
