import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "contador",
    home: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Pessoa: 0",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Text(
          "Pode entrar",
          style: TextStyle(
              color: Colors.red, fontStyle: FontStyle.italic, fontSize: 30),
        ),
      ],
    ),
  ));
}
