import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Dado',
        home: Column(
          children: <Widget>[
            Text('New Application'),
            Container(
              color: Colors.red[400],
              child: Column(
                children: <Widget>[
                  Image.network(
                      'https://th.bing.com/th/id/OIP.hKcqmg81dDFu_wjYIl33IAAAAA?pid=ImgDet&w=218&h=150&rs=1'),
                  ElevatedButton(
                      onPressed: () {
                        print('Button was pressed');
                      },
                      child: Text('Button'))
                ],
              ),
            ),
          ],
        ));
  }
}
