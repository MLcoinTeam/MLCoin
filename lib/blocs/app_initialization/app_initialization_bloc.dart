/*
*  app_inizialization_bloc.dart
*  
*  mlcoin_app 2020-06-07
*  mlcoin_app 2020-06-07
*
*  Created by [Allan Nava].
*  Updated by [Allan Nava]
*  Copyright © 2020 . All rights reserved.
*/
import 'dart:async';
///
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
///
part 'app_initialization_event.dart';
part 'app_initialization_state.dart';
///
class AppInitializationBloc extends Bloc<AppInitializationEvent, AppInitializationState> {
  @override
  AppInitializationState get initialState => AppInitializationInitial();

  @override
  Stream<AppInitializationState> mapEventToState(
    AppInitializationEvent event,
  ) async* {
    
  }
}
