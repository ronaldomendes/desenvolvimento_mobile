import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(FunctionalApp());

// é necessário tornar a aplicação Stateful ao invés de Stateless para que os métodos funcionem
class FunctionalApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FunctionalApp();
  }
}

class _FunctionalApp extends State<FunctionalApp> {
  String _appTitle = 'Cara ou Coroa';
  String _appMessage = 'Clique no botão iniciar e espere o resultado';
  String _imagePath = 'lib/images/moedas.png';
  List<String> _answers = ['Deu Cara', 'Deu Coroa'];
  List<String> _imagesPath = ['lib/images/cara.png', 'lib/images/coroa.png'];
  List<String> _defaultValues = [
    'Clique no botão iniciar e espere o resultado',
    'lib/images/moedas.png'
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // criando um timer para voltar para a mensagem inicial
    void _backToDefault() {
      Timer.periodic(Duration(seconds: 3), (Timer t) {
        setState(() {
          _appMessage = _defaultValues[0];
          _imagePath = _defaultValues[1];
        });
        t.cancel();
      });
    }

    // criando uma função que modifica a mensagem e a imagem
    void _generateAnswers() {
      var randomNumber = Random().nextInt(_answers.length);
      setState(() {
        _appMessage = _answers[randomNumber];
        _imagePath = _imagesPath[randomNumber];
      });
      _backToDefault();
    }

    return MaterialApp(
      title: _appTitle,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        appBar: AppBar(
          title: Text(
            _appTitle.toUpperCase(),
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color.fromRGBO(254, 111, 39, 0.7),
          centerTitle: true,
        ),
        body: Container(
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
                      fit: BoxFit.contain,
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(padding: const EdgeInsets.only(top: 30)),
                    Text(
                      'Você quer cara ou coroa?'.toUpperCase(),
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
                      padding: const EdgeInsets.only(top: 10),
                      child: ElevatedButton.icon(
                        onPressed: () {
                          _generateAnswers();
                        },
                        icon: Icon(Icons.bolt),
                        label: Text('Iniciar'),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(254, 111, 39, 0.7),
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
    );
  }
}
