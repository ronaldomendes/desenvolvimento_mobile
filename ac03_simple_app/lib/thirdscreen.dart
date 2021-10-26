import 'dart:async';

import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ThirdScreen();
  }
}

class _ThirdScreen extends State<ThirdScreen> {
  TextEditingController _textAlcool = TextEditingController();
  TextEditingController _textGasolina = TextEditingController();
  String _appTitle = 'Interação';
  String _imagePath = 'images/alcool.png';
  String _labelAlcool = 'Preço Alcool, ex: 4.59 ou 4,59';
  String _labelGasolina = 'Preço Gasolina, ex: 6.99 ou 6,99';
  String _mainText = 'Qual a melhor opção para abastecimento do seu carro?';
  String _resultText = '';
  Color _resultColor = Colors.black;

  double _parseTextToDouble(String text) {
    return double.parse(text.trim().replaceAll(',', '.'));
  }

  TextField _generateTextField(String label, TextEditingController controller) {
    return TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(labelText: label),
        style: TextStyle(fontSize: 15), controller: controller);
  }

  void _calcular() {
    final chars = RegExp(r'^[^0-9\.,]+$');
    if (_textAlcool.text == '' || _textGasolina.text == '') {
      setState(() {
        _resultText = 'Todos os campos são obrigatórios';
        _resultColor = Colors.red;
      });
    } else if (chars.hasMatch(_textAlcool.text) ||
        chars.hasMatch(_textGasolina.text)) {
      setState(() {
        _resultText = 'Informe apenas números';
        _resultColor = Colors.red;
      });
    } else {
      try {
        double alcool = _parseTextToDouble(_textAlcool.text);
        double gasolina = _parseTextToDouble(_textGasolina.text);
        if ((alcool / gasolina) >= 0.7) {
          setState(() {
            _resultText = 'Melhor abastecer com gasolina';
          });
        } else {
          setState(() {
            _resultText = 'Melhor abastecer com álcool';
          });
        }
      } catch (err) {
        setState(() {
          _resultText = 'Formato numérico inválido';
          _resultColor = Colors.red;
        });
      }
    }
    _textAlcool.text = '';
    _textGasolina.text = '';
  }

  void _backToDefault() {
    Timer.periodic(Duration(seconds: 3), (Timer t) {
      setState(() {
        _resultText = '';
        _resultColor = Colors.black;
      });
      t.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(_appTitle), centerTitle: true),
        body: Container(child: SingleChildScrollView(padding: EdgeInsets.all(32),
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(bottom: 32),
                  child: Image.asset(_imagePath)),
              Padding(padding: EdgeInsets.only(bottom: 5),
                  child: Text(_mainText, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center)),
              _generateTextField(_labelAlcool, _textAlcool),
              _generateTextField(_labelGasolina, _textGasolina),
              Padding(padding: EdgeInsets.only(top: 10),
                  child: ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size(160, 50)),
                    child: Text('Calcular', style: TextStyle(fontSize: 18)),
                    onPressed: () {
                      _calcular();
                      _backToDefault();
                    },
                  )),
              Padding(padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(_resultText, 
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: _resultColor),
                      textAlign: TextAlign.center)),
              Padding(padding: EdgeInsets.only(top: 10),
                  child: ElevatedButton.icon(label: Text('Voltar'),
                      icon: Icon(Icons.arrow_back),
                      style: ElevatedButton.styleFrom(fixedSize: Size(160, 50)),
                      onPressed: () {
                        Navigator.pop(context);
                      }))
            ],
          ),
        )));
  }
}
