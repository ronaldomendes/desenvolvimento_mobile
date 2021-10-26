import 'package:ac03_simple_app/fourthscreen.dart';
import 'package:ac03_simple_app/secondscreen.dart';
import 'package:ac03_simple_app/thirdscreen.dart';
import 'package:flutter/material.dart';

ElevatedButton _defineButton(
    BuildContext context, String text, IconData icons, var screen) {
  return ElevatedButton.icon(
    icon: Icon(icons),
    label: Text(text),
    style: ElevatedButton.styleFrom(fixedSize: Size(160, 50)),
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
    },
  );
}

EdgeInsets _definePadding() {
  return const EdgeInsets.only(top: 25);
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simple App'), centerTitle: true),
      body: Center(
        child: Container(
          child: Padding(
            padding: _definePadding(),
            child: Column(
              children: [
                Padding(
                    padding: _definePadding(),
                    child: _defineButton(context, 'Imagem e texto', Icons.image,
                        SecondScreen())),
                Padding(
                    padding: _definePadding(),
                    child: _defineButton(context, 'Interação',
                        Icons.gamepad_outlined, ThirdScreen())),
                Padding(
                    padding: _definePadding(),
                    child: _defineButton(context, 'Sobre nós!',
                        Icons.account_circle, FourthScreen())),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
