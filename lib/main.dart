import 'dart:async';

import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      title: "Material App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    void finished() {
      debugPrint("Finished ....");
    }

    debugPrint("Stated the splash screen");
    Timer(Duration(seconds: 5), finished);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // CircularProgressIndicator(
                //   strokeWidth: 10.0,
                //   backgroundColor: Colors.white,
                // )
                Text(
                  "Splash\nScreen",
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                    fontFamily: "Cursive",
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
