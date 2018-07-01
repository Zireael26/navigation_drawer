import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.limeAccent,
      ),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer'),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 8.0 : 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('First Page'),
              leading: Icon(Icons.question_answer),
            ),
            ListTile(
              title: Text('Second Page'),
              leading: Icon(Icons.ac_unit),
            ),
            ListTile(
              title: Text('Third Page'),
              leading: Icon(Icons.backup),
            ),
            Divider(
              height: 2.0,
            ),
            ListTile(
              title: Text('Fourth Page'),
              leading: Icon(Icons.cake),
            ),
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Text("Home Page"),
        ),
      ),
    );
  }
}
