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
        home: Container(
          color: Colors.white10,
          child: Image.network(
              'https://th.bing.com/th/id/OIP.CyJGDESPuyApOOXzHdAwAAAAAA?pid=ImgDet&rs=1'),
        ));
  }
}
