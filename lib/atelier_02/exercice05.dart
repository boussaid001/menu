import 'package:flutter/material.dart';

void main() {
  var myApp = MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: Text("Exercice 5"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  print("click sur Icone 1");
                },
                child: Icon(Icons.thumb_up, color: Colors.blue, size: 50.0),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
              ),
              Text(
                "0",
                style: TextStyle(color: Colors.red, fontSize: 26.0),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
              ),
              InkWell(
                onTap: () {
                  print("clik sur icone2");
                },
                child: Icon(Icons.thumb_down, color: Colors.red, size: 50.0),
              ),
            ],
          ),
        )),
  );
  runApp(myApp);
}
