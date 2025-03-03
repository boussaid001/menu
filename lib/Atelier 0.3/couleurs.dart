import 'dart:math';

import 'package:flutter/material.dart';

class GestionCouleurs extends StatefulWidget {
  const GestionCouleurs({super.key});

  @override
  State<GestionCouleurs> createState() => _GestionCouleursState();
}

class _GestionCouleursState extends State<GestionCouleurs> {
  Color? couleur = Colors.blue;
  List<Color> couleurs = [
    Colors.red,
    Colors.green,
    Colors.purple,
    Colors.black,
    Colors.white,
    Colors.brown
  ];
  int i = 0;
  void changerCouleurDepuisList() {
    if (i < couleurs.length) {
      couleur = couleurs[i];
      i++;
    } else {
      i = 0;
    }
  }

  changerCouleurAleat() {
    return couleur = Color.fromARGB(Random().nextInt(255),
        Random().nextInt(255), Random().nextInt(255), Random().nextInt(255));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: couleur,
      appBar: AppBar(
        title: Text("Gestion couleur"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              setState(() {
                //changerCouleurDepuisList();
                couleur = changerCouleurAleat();
                /*if (couleur == Colors.blue) {
                  couleur = Colors.pink;
                } else {
                  couleur = Colors.blue;
                }*/
              });
            },
            child: Text("Changer Couleur")),
      ),
    );
  }
}
