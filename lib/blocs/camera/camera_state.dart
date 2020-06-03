part of 'camera_bloc.dart';

abstract class CameraState extends Equatable {
  const CameraState();
}

class CameraInitial extends CameraState {
  @override
  List<Object> get props => [];
}
