import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(GameApp());

class GameApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GameApp();
  }
}

class _GameApp extends State<GameApp> {
  String _nomeRA = 'Ronaldo Mendes da Silva - RA 1903572';
  String _appTitle = 'Jogo do dado';
  String _appMessage = 'Clique no botão iniciar e espere o resultado';
  String _mainMessage = 'Escolha um número e boa sorte';
  String _imagePath = 'lib/images/0.png';
  List<String> _answers = ['1', '2', '3', '4', '5', '6'];
  String _textButton = 'Iniciar';
  IconData _iconButton = Icons.bolt;

  Color colorOrange = Color.fromRGBO(254, 111, 39, 0.7);
  Color colorWhite = Color.fromRGBO(255, 255, 255, 1);

  Widget build(BuildContext context) {
    void _backToDefault() {
      Timer.periodic(Duration(seconds: 3), (Timer t) {
        setState(() {
          _appMessage = 'Clique no botão iniciar e espere o resultado';
          _mainMessage = 'Escolha um número e boa sorte';
          _imagePath = 'lib/images/0.png';
          _textButton = 'Iniciar';
          _iconButton = Icons.bolt;
        });
        t.cancel();
      });
    }

    void _generateAnswers() {
      var randomNumber = Random().nextInt(_answers.length);
      setState(() {
        _appMessage = 'Número ' + (randomNumber + 1).toString().toUpperCase();
        _mainMessage = 'O resultado foi...';
        _imagePath = 'lib/images/' + (randomNumber + 1).toString() + '.png';
        _textButton = 'Aguarde...';
        _iconButton = Icons.timelapse;
      });
      _backToDefault();
    }

    return MaterialApp(
      title: _appTitle,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: colorWhite,
        appBar: AppBar(
          title: Text(
            _appTitle,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: colorOrange,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        _imagePath,
                        fit: BoxFit.scaleDown,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(padding: const EdgeInsets.only(top: 30)),
                      Text(
                        _mainMessage,
                        style: TextStyle(
                            fontSize: 22,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(padding: const EdgeInsets.only(top: 10)),
                      Text(
                        _appMessage,
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 20),
                        child: ElevatedButton.icon(
                          onPressed: () {
                            _generateAnswers();
                          },
                          icon: Icon(_iconButton),
                          label: Text(_textButton),
                          style: ElevatedButton.styleFrom(
                            primary: colorOrange,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            child: Container(
              height: 40,
              margin: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text(_nomeRA,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            color: colorOrange),
      ),
    );
  }
}
