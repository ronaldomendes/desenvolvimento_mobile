import 'package:flutter/material.dart';
import 'package:screens_app/firstroute.dart';

void main() {
  runApp(MaterialApp(
    title: 'Basic Navigation',
    theme: ThemeData(primarySwatch: Colors.blue),
    home: FirstRoute(),
  ));
}
