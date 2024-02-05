import 'package:get/get_navigation/src/routes/get_route.dart';
import '../screens/HomeScreen.dart';
import '../screens/TranslatorScreen.dart';

class Routes{
  static const String home = "/HomeScreen";
  static const String translator = "/TranslatorScreen";

  static final routes = [

    GetPage(
      name: home,
      page: () => HomeScreen(),
    ),
    GetPage(
        name: translator,
        page: () => TranslatorScreen(),
    ),

  ];
}