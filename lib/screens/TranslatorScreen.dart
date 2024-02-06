import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class TranslatorScreen extends StatefulWidget {
  const TranslatorScreen({Key? key}) : super(key: key);

  @override
  State<TranslatorScreen> createState() => _TranslatorScreenState();
}

class _TranslatorScreenState extends State<TranslatorScreen> {

  List<CameraDescription>? cameras; //list out the camera available
  CameraController? controller; //controller for camera
  // XFile? image; //for caputred image

  @override
  void initState() {
    loadCamera();
    super.initState();
  }

  loadCamera() async {
    cameras = await availableCameras();
    if(cameras != null){
      controller = CameraController(cameras![0], ResolutionPreset.max);
      //cameras[0] = first camera, change to 1 to another camera

      controller!.initialize().then((_) {
        if (!mounted) {
          return;
        }
        setState(() {});
      });
    }else{
      print("NO any camera found");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: 600,
              width: 400,
              child: controller == null?
              const Center(
                child: Text("Loading Camera..."),
              ):
              !controller!.value.isInitialized?
              const Center(
                child: CircularProgressIndicator(),
              ):
              CameraPreview(controller!),
            ),
          ],
        ),
      ),
    );
  }
}
