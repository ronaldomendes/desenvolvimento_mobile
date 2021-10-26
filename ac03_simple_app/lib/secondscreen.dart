import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Imagem e texto'), centerTitle: true),
        body: Center(
          child: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Image.network(
                          'https://avatars.githubusercontent.com/u/43147698?v=4')),
                  Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        'Minha imagem de perfil no Github!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )),
                  ElevatedButton.icon(
                      label: Text('Voltar'),
                      icon: Icon(Icons.arrow_back),
                      style: ElevatedButton.styleFrom(fixedSize: Size(160, 50)),
                      onPressed: () {
                        Navigator.pop(context);
                      })
                ],
              )),
        ));
  }
}
