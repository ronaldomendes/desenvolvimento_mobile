import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(home: ButtonSampleApp(), debugShowCheckedModeBanner: false));
}

BottomNavigationBarItem _navButton(String text, IconData icons) {
  return BottomNavigationBarItem(label: text, icon: Icon(icons));
}

class ButtonSampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Sample App'),
        backgroundColor: Color(0xFF6200EE),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextButton(
              onPressed: () {
                // Respond to button press
              },
              child: Text("TEXT BUTTON"),
            ),
            OutlinedButton(
              onPressed: () {
                // Respond to button press
              },
              child: Text("OUTLINED BUTTON"),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF6200EE),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value) {
          // Respond to item press.
        },
        items: [
          _navButton('Bookmarks', Icons.favorite),
          _navButton('Music', Icons.music_note),
          _navButton('Places', Icons.location_on),
          _navButton('News', Icons.library_books),
        ],
      ),
    );
  }
}
