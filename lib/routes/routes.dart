import 'package:get/get_navigation/src/routes/get_route.dart';
import '../screens/HomeScreen.dart';
import '../screens/TranslatorScreen.dart';
import '../screens/CameraPreviewScreen.dart';

class Routes{
  static const String home = "/HomeScreen";
  static const String translator = "/TranslatorScreen";
  static const String camera = "/CameraPreviewScreen";

  static final routes = [

    GetPage(
      name: home,
      page: () => HomeScreen(),
    ),
    GetPage(
        name: translator,
        page: () => TranslatorScreen(),
    ),
    GetPage(
      name: camera,
      page: () => CameraPreviewScreen(),
    ),
  ];
}