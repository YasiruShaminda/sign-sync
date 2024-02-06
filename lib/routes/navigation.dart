import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '';
import '../screens/HomeScreen.dart';
import '../screens/TranslatorScreen.dart';

StreamController<int> streamController = StreamController.broadcast();

class Navigator extends StatefulWidget {
  Navigator(this.index, this.stream);
  final int index;
  final Stream<int> stream;

  @override
  State<Navigator> createState() => _NavigatorState();
}

class _NavigatorState extends State<Navigator> {

  int _current = 1;

  @override
  void initState() {
    super.initState();
    widget.stream.listen((index) {
      setState(() {
        _current = index;
      });
    });
  }

  final int index = 0;

  static final List<Widget> _screens = <Widget>[
    const HomeScreen(),
    const TranslatorScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: const Text(
          'SIgnSync',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Salsa',
            fontSize: 28.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
    );
  }
}

