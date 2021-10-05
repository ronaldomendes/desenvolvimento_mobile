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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Meu App"),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            _status = !_status;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          curve: Curves.linear,
          alignment: Alignment.center,
          width: _status ? 60 : 160,
          height: 60,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(30)),
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 100),
                  opacity: _status ? 1 : 0,
                  child: Icon(
                    Icons.person_add,
                    color: Colors.white,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 100),
                  opacity: _status ? 0 : 1,
                  child: Text(
                    "Mensagem",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        elevation: 6,
        child: Icon(Icons.add_box),
        onPressed: () {
          setState(() {
            _status = !_status;
          });
        },
      ),
    );
  }
}
