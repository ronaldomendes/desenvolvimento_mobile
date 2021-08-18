import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "First Flutter App",
        home: Scaffold(
          backgroundColor: Color.fromRGBO(0, 255, 215, 0.3),
          appBar: AppBar(
            title: Text("Flutter Demo App"),
            backgroundColor: Color.fromRGBO(255, 200, 25, 0.3),
            centerTitle: true,
          ),
          body: Center(
              child: Text("Hello Flooter! Hahahah",
                  style: TextStyle(fontSize: 30, fontFamily: 'Roboto'))),
        ));
  }
}
