import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:sign_sync/routes/navigation.dart';
import 'package:sign_sync/screens/HomeScreen.dart';

Future<void> main() async {
  FlutterNativeSplash.removeAfter(initialization);
  runApp(MyApp());
}

Future initialization(BuildContext? context) async {
  await Future.delayed((Duration(seconds: 1)));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SignSync',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Navigate(1, streamController.stream),
      debugShowCheckedModeBanner: false,
    );
  }
}