import 'package:flutter/material.dart';

Widget pageBody(String imgUrl, String title, String description) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(imgUrl),
        Text(
          title,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          description,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black26,
          ),
        )
      ],
    ),
  );
}
