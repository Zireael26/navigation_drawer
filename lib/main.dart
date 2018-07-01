import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'new_page.dart';
import 'second_page.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        primaryColor: Colors.teal,
        accentColor: Colors.limeAccent,
      ),
      home: new HomePage(),
      routes: <String, WidgetBuilder>{
        "/a": (BuildContext context) => new NewPage("Page One"),
        "/b": (BuildContext context) => new SecondPage("Page two")
      },
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
      // Navigation Drawer
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Abhishek Kaushik'),
              accountEmail: Text('abhishek.nexus26@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.limeAccent,
                child: Text('A'),
              ),
            ),
            ListTile(
              title: Text('First Page'),
              leading: Icon(Icons.question_answer),
              onTap: () {
                Navigator.of(context).pop();
                Navigator
                    .of(context)
                    .pushNamed("/a"); // Using Named routes defined earlier
              },
            ),
            ListTile(
              title: Text('Second Page'),
              leading: Icon(Icons.ac_unit),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("/b");
              },
            ),
            ListTile(
              title: Text('Third Page'),
              leading: Icon(Icons.backup),
              onTap: () {
                Navigator.of(context).pop();
                // Routing Using MaterialPageRoute Builder
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>
                    new NewPage("Third Page")));
              },
            ),
            Divider(
              height: 2.0,
            ),
            ListTile(
              title: Text('Close'),
              leading: Icon(Icons.close),
              onTap: () {
                Navigator.of(context).pop();
              },
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
