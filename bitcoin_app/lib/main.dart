import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _price = '0';

  void _recoverPrice() async {
    http.Response response = await http.get(Uri.https('blockchain.info', '/ticker'));
    Map<String, dynamic> returns = json.decode(response.body);
    setState(() {
      _price = returns['BRL']['buy'].toString().replaceAll('.', ',');
    });
    print('Resultado: ' + returns['BRL']['buy'].toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/bitcoin.jpg"),
              Padding(
                padding: EdgeInsets.only(top: 30, bottom: 30),
                child: Text(
                  "R\$ " + _price,
                  style: TextStyle(fontSize: 35),
                ),
              ),
              ElevatedButton(
                child: Text(
                  "Atualizar",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onPressed: _recoverPrice,
              )
            ],
          ),
        ),
      ),
    );
  }
}
