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
part of 'camera_bloc.dart';

abstract class CameraState extends Equatable {
  const CameraState();
}

class CameraInitial extends CameraState {
  @override
  List<Object> get props => [];
}
