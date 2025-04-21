import 'package:flutter/material.dart';

void main() {
  var myApp = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Exercice 04"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
       // InkWell(child: ,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.thumb_up,
              size: 60.0,
              color: Colors.blue,
            ),
            Text(
              "0",
              style: TextStyle(color: Colors.red, fontSize: 22.0),
            ),
            Icon(
              Icons.thumb_down,
              size: 60.0,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    ),
  );
  runApp(myApp);
}
