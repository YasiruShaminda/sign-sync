// import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';
// import 'package:sign_sync/main.dart';
//
// class TranslatorScreen extends StatefulWidget {
//   const TranslatorScreen({Key? key}) : super(key: key);
//
//   @override
//   State<TranslatorScreen> createState() => _TranslatorScreenState();
// }
//
// class _TranslatorScreenState extends State<TranslatorScreen> {
//   late CameraController _cameraController;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _cameraController = CameraController(cameras[0], ResolutionPreset.max);
//     _cameraController.initialize().then((_) {
//       if(!mounted){
//         return;
//       }
//       setState(() {});
//     }).catchError((Object e) {
//       if (e is CameraException) {
//         switch (e.code) {
//           case 'CameraAccessDenied':
//             print("access was denied");
//             break;
//           default:
//             print(e.description);
//             break;
//         }
//       }
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             height: double.infinity,
//             child: CameraPreview(_cameraController),
//           )
//         ],
//       )
//     );
//   }
// }
