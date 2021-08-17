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
          backgroundColor: Color.fromRGBO(255, 255, 200, 0.5),
          appBar: AppBar(title: Text("Flutter Demo App"), centerTitle: true),
          body: Center(child: Text("Hello Flooter! Hahahah")),
        ));
  }
}
