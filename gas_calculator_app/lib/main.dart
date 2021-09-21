import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: GasApp(), debugShowCheckedModeBanner: false));
}

class GasApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GasApp();
  }
}

class _GasApp extends State<GasApp> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Entrada de dados')),
        body: Column(children: <Widget>[
          Padding(
              padding: EdgeInsets.all(32),
              child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: 'Digite o número'),
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                  onSubmitted: (String text) {
                    print('Número: ' + text);
                  },
                  controller: _textEditingController)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.blue),
            onPressed: () {
              print("numero:" + _textEditingController.text);
            },
            child: Text('Enviar'),
          )
        ]));
  }
}
