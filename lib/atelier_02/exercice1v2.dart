import 'package:flutter/material.dart';

void main() {
  var myApp = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Exercice 01"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            addBouton("Bouton 1"),
            Icon(
              Icons.ac_unit,
              size: 50.0,
              color: Colors.blue,
            ),
            SizedBox(
              width: 150.0,
              height: 80.0,
              child: addBouton("Bouton 2"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 6.0),
            ),
            SizedBox(
              width: 210.0,
              height: 40.0,
              child: addBouton("Bouton 3"),
            ),
          ],
        ),
      ),
    ),
  );
  runApp(myApp);
}

//ma propre fonction
Widget addBouton(String txt) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
    ),
    onPressed: () {
      print("Click sur B2");
    },
    child: Text(txt),
  );
}
