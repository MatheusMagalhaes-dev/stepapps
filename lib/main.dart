import 'package:flutter/material.dart';

void main() {
  runApp(app());
}

class app extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  app({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
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
