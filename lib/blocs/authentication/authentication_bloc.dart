/*
*  authentication_bloc.dart
*  mlcoin_app 2020-04-02
*  mlcoin_app 2020-06-07
*
*  Created by [Allan Nava].
*  Copyright © 2020 [Allan Nava]. All rights reserved.
*/
///
import 'dart:async';
//
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
//
part 'authentication_event.dart';
part 'authentication_state.dart';
///
class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  @override
  AuthenticationState get initialState => AuthenticationInitial();

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    
  }
}
//