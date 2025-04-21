import 'package:flutter/material.dart';

void main() {
  var myApp = MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text("My first app"),
        centerTitle: true,
        backgroundColor: Colors.purple[100],
      ),
      body: Center(
        child: Text(
          "My page",
          style: TextStyle(
              fontSize: 40.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );

  runApp(myApp);
}
