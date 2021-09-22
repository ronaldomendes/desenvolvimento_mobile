import 'dart:ui';

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
  TextEditingController _textAlcool = TextEditingController();
  TextEditingController _textGasolina = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String _appTitle = 'Álcool ou Gasolina';
    String _imagePath = 'images/alcool.png';
    String _labelAlcool = 'Preço Alcool, ex: 2.59';
    String _labelGasolina = 'Preço Gasolina, ex: 4.00';
    String _mainText =
        'Saiba qual a melhor opção para abastecimento do seu carro';
    String _resultText = 'Resultado';

    return Scaffold(
        appBar: AppBar(
          title: Text(_appTitle),
          centerTitle: true,
        ),
        body: Container(
            child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(bottom: 32),
                  child: Image.asset(_imagePath)),
              Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    _mainText,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: _labelAlcool),
                style: TextStyle(fontSize: 22),
                controller: _textAlcool,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: _labelGasolina),
                style: TextStyle(fontSize: 22),
                controller: _textGasolina,
              ),
              Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size.fromHeight(40)),
                    child: Text(
                      'Calcular',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(_resultText,
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center))
            ],
          ),
        )));
  }
}
