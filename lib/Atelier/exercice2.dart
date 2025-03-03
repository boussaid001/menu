import 'package:flutter/material.dart';

void main() {
  var myApp = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Exercice 2"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            addButton("Button 1"),
            Expanded(
              flex: 3,
              child: Icon(
                Icons.ac_unit,
                color: Colors.red,
                size: 50.0,
              ),
            ),
            SizedBox(
              width: 50.0,
              height: 140.0,
              child: addButton("Button 2"),
            ),
            Padding(padding: EdgeInsets.only(top: 6.0)),
            Expanded(
              flex: 3,
              child: Icon(
                Icons.add_circle,
                color: Colors.green,
                size: 50.0,
              ),
            ),
            SizedBox(
              width: 150.0,
              height: 40.0,
              child: addButton("Button 3"),
            ),
          ],
        ),
      ),
    ),
  );
  runApp(myApp);
}

// ma propre fonction
Widget addButton(String txt) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          )),
      onPressed: () {
        print("Click sur $txt");
      },
      child: Text(txt));
}
