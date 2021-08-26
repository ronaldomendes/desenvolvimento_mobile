import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dado',
      home: Column(
        children: [Text("Hello"), Text("Username"), Text("Password")],
      ),
    );
  }
}
