import 'package:flutter/material.dart';
import './demo/demo1.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigration',
          onPressed: () => debugPrint("menu"),
        ),
        title: Text('Hello, Flutter'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'search',
            onPressed: () => debugPrint("search"),
          )
        ],
        elevation: 30.0,
      ),
      body: null,
    );
  }
} 


