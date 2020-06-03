import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'camera_event.dart';
part 'camera_state.dart';

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
