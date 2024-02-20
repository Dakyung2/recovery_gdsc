import 'dart:async';
//import 'dart:html';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';



/// Camera example home widget.
class CameraExampleHome extends StatefulWidget {

  
  const CameraExampleHome({
    required this.cameraController,
    required this.camera, 
    required this.startRecording,
    //required this.stopRecording,
    Key? key}) : super(key: key);

  final List<CameraDescription> camera;
  final CameraController cameraController;
  final VoidCallback startRecording;
  //final VoidCallback stopRecording;


  @override
  State<CameraExampleHome> createState() => _CameraExampleHomeState();
}

class _CameraExampleHomeState extends State<CameraExampleHome> {
  late CameraController controller;
   Future<void>? cameraValue;

  @override
  void initState()  {
    super.initState();  
    controller = widget.cameraController;
    //controller = CameraController(widget.camera[0], ResolutionPreset.max);
    cameraValue = controller.initialize();
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {

      });
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            // Handle access errors here.
            break;
          default:
            // Handle other errors here.
            break;
        }
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
     double baseWidth = 1366;
    double fem = MediaQuery.of(context).size.width / baseWidth;

    final size = MediaQuery.of(context).size;
    final deviceRatio = size.width / size.height;


    if (!controller.value.isInitialized) {
      return Container();
    }
    return Transform.scale(
      scale: controller.value.aspectRatio / deviceRatio,
      child: Center(
        child: AspectRatio(
          aspectRatio: controller.value.aspectRatio,

          child: SizedBox(
            width: 374.97*fem,
              height: 606*fem,
            child: CameraPreview(controller)),
        ),
      ),
    );
  }
}