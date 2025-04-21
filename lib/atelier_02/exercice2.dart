import 'package:flutter/material.dart';

void main() {
  var myApp = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Exercice 02"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Row(
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
              child: Text("B1"),
            ),
            Expanded(
              flex: 3,
              child: Icon(
                Icons.ac_unit,
                size: 30.0,
                color: Colors.red,
              ),
            ),
            SizedBox(
              width: 50.0,
              height: 100.0,
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
                child: Text("B2"),
              ),
            ),
            Icon(
              Icons.add_circle,
              size: 50.0,
              color: Colors.green,
            ),
            Padding(
              padding: EdgeInsets.only(top: 6.0),
            ),
            SizedBox(
              width: 80.0,
              height: 40.0,
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
                child: Text("B3"),
              ),
            ),
          ],
        ),
      ),
    ),
  );
  runApp(myApp);
}
