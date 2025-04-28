import "package:flutter/material.dart";

void main() {
  var myapp = MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Titre de l'appl"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "my app",
          style: TextStyle(
              fontSize: 40.0, color: Colors.pink, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );

  runApp(myapp);
}
