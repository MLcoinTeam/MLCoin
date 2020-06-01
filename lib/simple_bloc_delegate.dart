/*
*  simple_bloc_delegate.dart
*  
*  mlcoin_app 2020-06-01
*  mlcoin_app 2020-06-01
*
*  Created by [Allan Nava].
*  Updated by [Allan Nava]
*  Copyright © 2020 . All rights reserved.
*/
import 'package:bloc/bloc.dart';
//
class SimpleBlocDelegate extends BlocDelegate {
  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    print('onEvent $bloc | $event');
  }
  //
  @override
  onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print('onTransition $bloc | $transition');
  }
  //
  @override
  void onError(Bloc bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
    print('onError $bloc | $error');
  }
  //
}
//
