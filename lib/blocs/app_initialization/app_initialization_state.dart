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
part of 'app_initialization_bloc.dart';
///
/*abstract class AppInitializationState extends Equatable {
  const AppInitializationState();
}
///
class AppInitializationInitial extends AppInitializationState {
  @override
  List<Object> get props => [];
}*/
///
class AppInitializationState extends Equatable {
  AppInitializationState({
    @required this.isInitialized,
    this.isInitializing: false,
    this.progress: 0,
  });

  final bool isInitialized;
  final bool isInitializing;
  final int progress;

  factory AppInitializationState.notInitialized() {
    return AppInitializationState(
      isInitialized: false,
    );
  }

  factory AppInitializationState.progressing(int progress) {
    return AppInitializationState(
      isInitialized: progress == 100,
      isInitializing: true,
      progress: progress,
    );
  }

  factory AppInitializationState.initialized() {
    return AppInitializationState(
      isInitialized: true,
      progress: 100,
    );
  }

  @override
  List<Object> get props => [];
}
///
