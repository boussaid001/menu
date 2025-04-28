import 'package:flutter/material.dart';

class Exercice1 extends StatelessWidget {
  const Exercice1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercice 1"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            addButon("B1", Colors.blue),
            Padding(
              padding: EdgeInsets.only(right: 8.0),
            ),
            addButon("B2", Colors.red),
            Padding(
              padding: EdgeInsets.only(right: 8.0),
            ),
            addButon("B3", Colors.green),
            Padding(
              padding: EdgeInsets.only(right: 8.0),
            ),
            addButon("B4", Colors.purple),
          ],
        ),
      ),
    );
  }

  Widget addButon(String txt, Color? couleur) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(txt),
      style: ElevatedButton.styleFrom(
        backgroundColor: couleur,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      ),
    );
  }
}
