import 'package:ac03_simple_app/firstscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'Simple App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: FirstScreen(),
      debugShowCheckedModeBanner: false));
}
