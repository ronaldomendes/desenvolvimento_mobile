import 'package:flutter/material.dart';

class FourthScreen extends StatefulWidget {
  @override
  _FourthScreen createState() => _FourthScreen();
}

class _FourthScreen extends State<FourthScreen> {
  bool _status = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Sobre nós!'), centerTitle: true),
        body: AnimatedContainer(
            duration: Duration(seconds: 1),
            child: Center(
              child: Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            'Conteúdo do app desenvolvido durante o \n4º de Engenharia da Computação por:\nRonaldo Mendes da Silva\nRA: 1903572',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: _status ? 22 : 12,
                                fontWeight: _status ? FontWeight.bold : FontWeight.normal),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: ElevatedButton.icon(
                            label: Text('Testar efeito'),
                            icon: Icon(Icons.edit_off_rounded),
                            style: ElevatedButton.styleFrom(fixedSize: Size(160, 50)),
                            onPressed: () {
                              setState(() {
                                _status = !_status;
                              });
                            }),
                      ),
                      ElevatedButton.icon(
                          label: Text('Voltar'),
                          icon: Icon(Icons.arrow_back),
                          style: ElevatedButton.styleFrom(fixedSize: Size(_status ? 160 : 400, 50)),
                          onPressed: () {
                            Navigator.pop(context);
                          })
                    ],
                  )),
            )));
  }
}
