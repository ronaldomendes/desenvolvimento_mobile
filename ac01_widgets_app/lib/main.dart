import 'package:flutter/material.dart';

void main() {
  runApp(Ac01WidgetsApp());
}

class Ac01WidgetsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "AC01 - Widgets App",
        home: Scaffold(
            backgroundColor: Color.fromRGBO(47, 47, 47, 1),
            appBar: AppBar(
              title: Text("Engenharia Impacta"),
              backgroundColor: Color.fromRGBO(254, 111, 39, 0.7),
              centerTitle: true,
            ),
            body: Container(
                child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: (Column(
                children: <Widget>[
                  Text(
                    'Ronaldo Mendes da Silva - RA 1903572\nSaulo Santos Freire - RA 1903921',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20, top: 50),
                    child: Image.network(
                        'https://www.pravaler.com.br/wp-content/uploads/2019/09/universidade-impacta.png'),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 0),
                            child: ElevatedButton.icon(
                              onPressed: () {
                                print('Pressing left button');
                              },
                              icon: Icon(Icons.arrow_left),
                              label: Text('Left'),
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromRGBO(254, 111, 39, 0.7),
                                  fixedSize: Size(100, 35)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: ElevatedButton.icon(
                                onPressed: () {
                                  print('Pressing right button');
                                },
                                icon: Icon(Icons.arrow_right),
                                label: Text('Right'),
                                style: ElevatedButton.styleFrom(
                                    primary: Color.fromRGBO(254, 111, 39, 0.7),
                                    fixedSize: Size(100, 35))),
                          )
                        ],
                      )),
                ],
              )),
            ))));
  }
}
