/*
*  scanner.dart
*  mlcoin_app 2020-04-02
*  mlcoin_app 2020-06-05
*
*  Created by [Filippo Fresilli & Allan Nava].
*  Copyright © 2020 [Filippo Fresilli & Allan Nava]. All rights reserved.
*/
import 'dart:io';

///
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:mlcoin_app/repositories/repositories.dart';
import 'package:mlcoin_app/utils/values/colors.dart';
import 'package:mlcoin_app/widgets/atoms/atoms.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_svg/flutter_svg.dart';

///
///
///
class ScannerPage extends StatefulWidget {
  final MLRepository mlRepository;
  ScannerPage({Key key, this.mlRepository}) : super(key: key);

  @override
  _ScannerPageState createState() => _ScannerPageState();
}

//
class _ScannerPageState extends State<ScannerPage> with WidgetsBindingObserver {
  CameraController controller;
  String imagePath;
  Future<void> _initializeControllerFuture;
  List<CameraDescription> get cameras => widget.mlRepository.cameras;
  int selectedCamera;

  String timestamp() => DateTime.now().millisecondsSinceEpoch.toString();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    if (cameras != null) _setController();
    print("camers $cameras");
  }

  _setController() {
    controller = CameraController(cameras.first, ResolutionPreset.medium);
    selectedCamera = 0;
    _initializeControllerFuture = controller.initialize();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // App state changed before we got the chance to initialize.
    if (controller == null || !controller.value.isInitialized) {
      return;
    }
    if (state == AppLifecycleState.inactive) {
      controller?.dispose();
    } else if (state == AppLifecycleState.resumed) {
      if (controller != null) {
        onNewCameraSelected(controller.description);
      }
    }
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      key: _scaffoldKey,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          _cameraPreviewWidget(),
          Positioned.fill(
            child: SvgPicture.asset("assets/images/focus_rectangle.svg"),
            left: 90,
            right: 90,
            //top: 60,
            //bottom: 60,
          ),
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                      top: 10,
                    ),
                    height: 50,
                    decoration: BoxDecoration(
                      color: kOpacity,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: FlatButton(
                            child: Icon(
                              Icons.flash_on,
                              size: 30,
                            ),
                            onPressed: () {},
                          ),
                          //margin: EdgeInsets.only(top: 20),
                        ),
                        Container(
                          child: FlatButton(
                            child: Icon(
                              Icons.photo_size_select_large,
                              size: 30,
                            ),
                            onPressed: () {},
                          ),
                          //margin: EdgeInsets.only(top: 20, left: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 115,
                  margin: EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                    color: kOpacity,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _previewControlRowWidget(),
                      _captureControlRowWidget(),
                      _swapControlRowWidget(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Display the preview from the camera (or a message if the preview is not available).
  Widget _cameraPreviewWidget() {
    return FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return AspectRatio(
              child: CameraPreview(controller),
              aspectRatio: controller.value.aspectRatio,
            );
          } else
            return Center(
              child: CircularProgressIndicator(),
            );
        });
  }

  /// Display the control bar with buttons to take pictures and record videos.
  Widget _captureControlRowWidget() {
    return Container(
      //margin: EdgeInsets.only(bottom: 30, right: 20),
      // alignment: Alignment.bottomCenter,
      child: IconButton(
        icon: const Icon(
          Icons.camera,
          size: 60,
        ),
        color: Colors.red,
        onPressed: controller != null ? onTakePictureButtonPressed : null,
      ),
    );
  }

  /// Display the control bar with buttons to preview gallery images.
  Widget _previewControlRowWidget() {
    return Container(
      //margin: EdgeInsets.only(bottom: 30),
      //alignment: Alignment.bottomCenter,
      child: IconButton(
        icon: const Icon(
          Icons.photo_size_select_actual,
          size: 40,
        ),
        color: Colors.white,
        onPressed: controller != null ? onTakePictureButtonPressed : null,
      ),
    );
  }

  /// Display the control bar with buttons to Swap Camera.
  Widget _swapControlRowWidget() {
    return Container(
      //margin: EdgeInsets.only(bottom: 30),
      child: IconButton(
        icon: const Icon(
          Icons.switch_camera,
          size: 40,
        ),
        color: Colors.white,
        onPressed: controller != null ? swapCamera : null,
      ),
    );
  }

  /// Display a row of toggle to select the camera (or a message if no camera is available).
  Widget _cameraTogglesRowWidget() {
    final List<Widget> toggles = <Widget>[];
    if (cameras.isEmpty) {
      return const Text('No camera found');
    } else {
      for (CameraDescription cameraDescription in cameras) {
        toggles.add(
          SizedBox(
            width: 90.0,
            child: RadioListTile<CameraDescription>(
              title: Icon(
                getCameraLensIcon(cameraDescription.lensDirection),
              ),
              groupValue: controller?.description,
              value: cameraDescription,
              onChanged: controller != null && controller.value.isRecordingVideo
                  ? null
                  : onNewCameraSelected,
            ),
          ),
        );
      }
    }
    return Row(children: toggles);
  }

  void swapCamera() {
    if (cameras.length > 1) {
      selectedCamera++;
      if (selectedCamera == 2)
        selectedCamera = 0;
      else
        selectedCamera = 1;
      onNewCameraSelected(cameras.elementAt(selectedCamera));
    }
  }

  void onNewCameraSelected(CameraDescription cameraDescription) async {
    if (controller != null) {
      await controller.dispose();
    }
    controller = CameraController(
      cameraDescription,
      ResolutionPreset.medium,
      //enableAudio: enableAudio,
    );

    // If the controller is updated then update the UI.
    controller.addListener(() {
      if (mounted) setState(() {});
      if (controller.value.hasError) {
        //print('Camera error ${controller.value.errorDescription}');
      }
    });

    try {
      await controller.initialize();
    } on CameraException catch (e) {
      //print(e);
    }

    if (mounted) {
      setState(() {});
    }
  }

  Future<String> takePicture() async {
    if (!controller.value.isInitialized) {
      //print('Error: select a camera first.');
      return null;
    }
    final Directory extDir = await getApplicationDocumentsDirectory();
    final String dirPath = '${extDir.path}/Pictures/flutter_test';
    await Directory(dirPath).create(recursive: true);
    final String filePath = '$dirPath/${DateTime.now()}.jpg';

    if (controller.value.isTakingPicture) {
      // A capture is already pending, do nothing.
      return null;
    }

    try {
      await controller.takePicture(filePath);
    } catch (e) {
      //print(e);
      return null;
    }
    return filePath;
  }

  void onTakePictureButtonPressed() async {
    await takePicture().then((String filePath) {
      if (mounted) {
        setState(() {
          imagePath = filePath;
        });
        if (filePath != null) print('Picture saved to $filePath');
      }
    });
  }

  /// Display the thumbnail of the captured image or video.
  /*Widget _thumbnailWidget() {
    return Expanded(
      child: Align(
        alignment: Alignment.centerRight,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            videoController == null && imagePath == null
                ? Container()
                : SizedBox(
                    child: (videoController == null)
                        ? Image.file(File(imagePath))
                        : Container(
                            child: Center(
                              child: AspectRatio(
                                  aspectRatio:
                                      videoController.value.size != null
                                          ? videoController.value.aspectRatio
                                          : 1.0,
                                  child: VideoPlayer(videoController)),
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.pink)),
                          ),
                    width: 64.0,
                    height: 64.0,
                  ),
          ],
        ),
      ),
    );
  }*/
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
