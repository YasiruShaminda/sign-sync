import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '';
import '../screens/HomeScreen.dart';
import '../screens/TranslatorScreen.dart';

StreamController<int> streamController = StreamController.broadcast();

class Navigate extends StatefulWidget {
  Navigate(this.index, this.stream);
  final int index;
  final Stream<int> stream;

  @override
  State<Navigate> createState() => _NavigateState();
}

class _NavigateState extends State<Navigate> {

  int _current = 0;

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
          'SignSync',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Salsa',
            fontSize: 28.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            onPressed: () {
              streamController.add(0);
            },
            icon: const Icon(Icons.home),
          ),
        ],
      ),
      body: _screens[_current],
    );
  }
}

