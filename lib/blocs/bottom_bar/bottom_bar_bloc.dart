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
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bottom_bar_event.dart';
///
enum AppTab { home, coin, settings }
///
class BottomBarBloc extends Bloc<BottomBarEvent, AppTab> {
  @override
  AppTab get initialState => AppTab.home;

  @override
  Stream<AppTab> mapEventToState(
    BottomBarEvent event,
  ) async* {
    if (event is BottombarUpdated) {
      yield event.tab;
    }
  }
}
