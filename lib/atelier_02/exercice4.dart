import 'package:flutter/material.dart';

class Compteur extends StatefulWidget {
  const Compteur({super.key});

  @override
  State<Compteur> createState() => _CompteurState();
}

class _CompteurState extends State<Compteur> {
  int cpt = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercice 04"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50.0,
              width: 100.0,
              child: addbouton("+", () {
                setState(() {
                  cpt++;
                });
              }),
            ),
            Text(
              cpt.toString(),
              style: TextStyle(color: Colors.red, fontSize: 22.0),
            ),
            addbouton("-", () {
              setState(() {
                cpt--;
              });
            }),
          ],
        ),
      ),
    );
  }

  Widget addbouton(String txt, void Function()? traitement) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      ),
      onPressed: traitement,
      child: Text(txt),
    );
  }
}
