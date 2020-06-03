/*
*  bottom_bar_bloc.dart
*  
*  mlcoin_app 2020-06-03
*  mlcoin_app 2020-06-03
*
*  Created by [Allan Nava].
*  Updated by [Allan Nava]
*  Copyright © 2020 . All rights reserved.
*/
part of 'bottom_bar_bloc.dart';
///
abstract class BottomBarEvent extends Equatable {
  const BottomBarEvent();
}
///
class BottombarUpdated extends BottomBarEvent {
  final AppTab tab;

  const BottombarUpdated(this.tab);

  @override
  List<Object> get props => [tab];

  @override
  String toString() => 'BottombarUpdated { tab: $tab }';
}
///