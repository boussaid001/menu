import 'package:flutter/material.dart';

void main() {
  var myApp = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("My first App"),
        centerTitle: true,
        backgroundColor: Colors.purple[100],
      ),
      body: const Text(
        "My page",
        style: TextStyle(
          fontSize: 40.0,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.green,
    ),
  );

  runApp(myApp);
}
