/*
*  camer_bloc.dart
*  
*  mlcoin_app 2020-06-04
*  mlcoin_app 2020-06-15
*
*  Created by [Filippo Fresilli & Allan Nava].
*  Updated by [Filippo Fresilli & Allan Nava]
*  Copyright © [MLCoinTeam] 2020 . All rights reserved.
*/
//
import 'dart:async';
//
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
//
part 'camera_event.dart';
part 'camera_state.dart';
//
class CameraBloc extends Bloc<CameraEvent, CameraState> {
  @override
  CameraState get initialState => CameraInitial();

  @override
  Stream<CameraState> mapEventToState(
    CameraEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
