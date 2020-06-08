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
import 'package:flutter/material.dart';
///
part 'app_initialization_event.dart';
part 'app_initialization_state.dart';
///
class AppInitializationBloc extends Bloc<AppInitializationEvent, AppInitializationState> {
  @override
  AppInitializationState get initialState => AppInitializationState.notInitialized();

  @override
  Stream<AppInitializationState> mapEventToState(
    AppInitializationEvent event,
  ) async* {
    if (event is ApplicationInitializationEvent) {
      //yield* _mapApplicationInitializationData(event.type);
    }
    /*if (!currentState.isInitialized){
      yield ApplicationInitializationState.notInitialized();
    }

    if (event.type == ApplicationInitializationEventType.start) {
      for (int progress = 0; progress < 101; progress += 10){
        await Future.delayed(const Duration(milliseconds: 300));
        yield ApplicationInitializationState.progressing(progress);
      }
    }

    if (event.type == ApplicationInitializationEventType.stop){
      yield ApplicationInitializationState.initialized();
    }*/
  }

  Future<AppInitializationState> _mapApplicationInitializationData(ApplicationInitializationEventType type) async {
    /*if (!type.isInitialized){
      yield ApplicationInitializationState.notInitialized();
    }*/
    /*if (type == ApplicationInitializationEventType.start) {
      await Future.delayed(const Duration(milliseconds: 900));
      return ApplicationInitializationState.progressing(progress);
    }*/
  }
}
