import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Placeholder Api',
      home: Scaffold(
        appBar: AppBar(
          title: Text('PlaceholderApp'),
        ),
        body: Center(
          child: Container(
            child: Text('Home screen'),
          ),
        ),
      ),
    );
  }
}
