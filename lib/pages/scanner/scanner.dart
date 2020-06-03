/*
*  scanner.dart
*  mlcoin_app 2020-04-02
*  mlcoin_app 2020-06-03
*
*  Created by [Allan Nava].
*  Copyright © 2020 [Allan Nava]. All rights reserved.
*/
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
///
///
import 'package:mlcoin_app/widgets/atoms/atoms.dart';
///
class ScannerPage extends StatefulWidget {
  ScannerPage({Key key}) : super(key: key);

  @override
  _ScannerPageState createState() => _ScannerPageState();
}
//
class _ScannerPageState extends State<ScannerPage> with WidgetsBindingObserver {
  CameraController controller;
  String imagePath;
  String videoPath;
  //VideoPlayerController videoController;
  VoidCallback videoPlayerListener;
  bool enableAudio = true;

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(child: AtomText("scanner"),),
    );
  }
}

/// Returns a suitable camera icon for [direction].
IconData getCameraLensIcon(CameraLensDirection direction) {
  switch (direction) {
    case CameraLensDirection.back:
      return Icons.camera_rear;
    case CameraLensDirection.front:
      return Icons.camera_front;
    case CameraLensDirection.external:
      return Icons.camera;
  }
  throw ArgumentError('Unknown lens direction');
}