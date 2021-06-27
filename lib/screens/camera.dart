import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

List<CameraDescription>? cameras;

class Camera extends StatefulWidget {
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  CameraController? controller;

  initCamera() async {
    cameras = await availableCameras();
    Future.delayed(Duration(seconds: 1));
    controller = CameraController(cameras![0], ResolutionPreset.max);
    controller!.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void initState() {
    super.initState();
    initCamera();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller!.value.isInitialized) {
      return Container();
    }
    return MaterialApp(
      home: CameraPreview(controller!),
    );
  }
}
