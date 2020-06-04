/*
*  ml_repository.dart
*  
*  mlcoin_app 2020-06-01
*  mlcoin_app 2020-06-04
*
*  Created by [Allan Nava].
*  Updated by [Allan Nava]
*  Copyright © 2020 . All rights reserved.
*/
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:mlcoin_app/repositories/repositories.dart';
///
class MLRepository{
  final ApiClient apiClient;
  final List<CameraDescription> cameras;
  ///
  MLRepository( { @required this.apiClient, @required this.cameras  } )
    : assert( apiClient != null );
  ///
  //////
  /// ==================================== STUFF ====================================

}