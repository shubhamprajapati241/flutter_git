import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String myvar;
  String displaytext = "default";

  void showText() {
    setState(() {
      displaytext = myvar;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GeeksforGeeks'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                onChanged: (text) {
                  myvar = text;
                },
                // decoration: InputDecoration(
                //     fillColor: Colors.black,
                //     border: OutlineInputBorder(),
                //     labelText: "Username",
                //     hintText: "Please enter your username",
                //     helperText: "e.g : Shubham ",
                //     helperStyle: TextStyle(
                //       color: Colors.red[500],
                //       fontWeight: FontWeight.bold,
                //       fontSize: 15.0,
                //     )),
                // decoration: InputDecoration.collapsed(hintText: "Username"),

                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_box),
                ),
                autocorrect: true,
                maxLength: 20,
                style: TextStyle(
                  // backgroundColor: Colors.blue,
                  color: Colors.red,
                  fontSize: 20.0,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: showText,
              child: Text("Press"),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "$displaytext",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple[800],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
