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
abstract class AppInitializationEvent extends Equatable {
  const AppInitializationEvent();
}
///
class ApplicationInitializationEvent extends AppInitializationEvent {
  
  final ApplicationInitializationEventType type;

  ApplicationInitializationEvent({
    this.type: ApplicationInitializationEventType.start,
  }) : assert(type != null);

  @override
  List<Object> get props => [ type ];
}
///
enum ApplicationInitializationEventType {
  start,
  stop,
} 
///