import 'package:flutter/material.dart';

void main() {
  runApp(FirstFlutterApp());
}

class FirstFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "First Flutter App",
        home: Scaffold(
          backgroundColor: Color.fromRGBO(255, 255, 0, 0.3),
          appBar: AppBar(
            title: Text("Engenharia".toUpperCase()),
            backgroundColor: Color.fromRGBO(0, 255, 0, 0.3),
            centerTitle: true,
          ),
          body: Center(
              child: Text("Impacta".toUpperCase(),
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.blue))),
        ));
  }
}
