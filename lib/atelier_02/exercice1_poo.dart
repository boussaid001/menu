import 'package:flutter/material.dart';



class Exercice1 extends StatelessWidget {
  const Exercice1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              ),
              onPressed: () {
                print("Click sur B1");
              },
              child: Text("Bouton 1"),
            ),
            Icon(
              Icons.ac_unit,
              size: 50.0,
              color: Colors.blue,
            ),
            SizedBox(
              width: 150.0,
              height: 80.0,
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
                child: Text("Bouton 2"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 6.0),
            ),
            SizedBox(
              width: 210.0,
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
                child: Text("Bouton 3"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




  