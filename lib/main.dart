import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
      child: Center(
        child: Image.asset(
          "assets/images/log.png",
          height: 200,
          width: 300,
        ),
      ),
    );
  }
}
