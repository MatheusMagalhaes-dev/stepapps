import 'package:flutter/material.dart';

void main() {
  runApp(app());
}

class app extends StatefulWidget {
  app({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('imagens'),
      ),
      body: Image.asset(
        'assets/images/img1.png',
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      ),
    ));
  }
}
