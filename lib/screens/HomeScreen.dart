import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sign_sync/screens/TranslatorScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(null),
        ),
        title: const Text(
          'SignSync',
          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Salsa', fontSize: 28.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Tap Here to Start Translate',
              style: TextStyle(
                fontFamily: 'salsa',
                fontSize: 35,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 80.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                        const TranslatorScreen()
                    )
                );
              },
              child: Container(
                width: 140.0,
                height: 140.0,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(80),
                  //border: Border.all(color: Colors.black12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(2, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: const Center(
                  child: Icon(
                      Icons.back_hand,
                      color: Colors.black,
                    size: 50.0,
                    ),
                ),
              ),
            )
          ]
        ),
      ),
    );
  }
}
