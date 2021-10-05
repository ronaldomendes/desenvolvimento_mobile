import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(home: AnimationsApp(), debugShowCheckedModeBanner: false));

class AnimationsApp extends StatefulWidget {
  @override
  _AnimationsApp createState() => _AnimationsApp();
}

class _AnimationsApp extends State<AnimationsApp> {
  bool _status = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedContainer(
          padding: EdgeInsets.all(20),
          width: _status ? 200 : 300,
          height: _status ? 300 : 200,
          color: _status ? Colors.white : Colors.purpleAccent,
          child: Image.asset("images/logo.png"),
          duration: Duration(seconds: 2),
          curve: Curves.elasticInOut,
        ),
        ElevatedButton(
          child: Text("Alterar"),
          onPressed: () {
            setState(() {
              _status = !_status;
            });
          },
        )
      ],
    );
  }
}
