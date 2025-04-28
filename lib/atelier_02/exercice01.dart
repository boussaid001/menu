import 'package:flutter/material.dart';


void main() {
  var myApp = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Exercice 1"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              ),
              onPressed: () {
                print("Click sur B1");
              },
              child: Text("Button 1"),
            ),
            Icon(
              Icons.ac_unit,
              size: 50.0,
              color: Colors.blue,
            ),
            SizedBox(
              height: 80.0,
              width: 120.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                ),
                onPressed: () {
                  print("Click sur B2");
                },
                child: Text("Button 2"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8.0),
            ),
            SizedBox(
              width: 180.0,
              height: 50.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                ),
                onPressed: () {
                  print("Click sur B3");
                },
                child: Text("Button 3"),
              ),
            ),
          ],
        ),
      ),
    ),
  );
  runApp(myApp);
}
