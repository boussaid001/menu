//exercice 2
/*
  click => background de l'app
        2 couleurs : Red +  green
       => à partir d'un ensble e couleurs
       => couleu Aleatoire 
*/
import 'dart:math'; //ramdom

import 'package:flutter/material.dart';

class GestionCouleurs extends StatefulWidget {
  const GestionCouleurs({super.key});

  @override
  State<GestionCouleurs> createState() => _GestionCouleursState();
}

class _GestionCouleursState extends State<GestionCouleurs> {
  Color? couleur = Colors.blue;
  int i = 0;
  List<Color> couleurs = [
    Colors.red,
    Colors.green,
    Colors.purple,
    Colors.black45,
    Colors.brown,
    Colors.white
  ];

  void changecouleurDepuisList() {
    if (i < couleurs.length) {
      couleur = couleurs[i];
      i++;
    } else {
      i = 0;
    }
  }

  Color changecouleurAleat() {
    return couleur = Color.fromARGB(
      Random().nextInt(255),
      Random().nextInt(255),
      Random().nextInt(255),
      Random().nextInt(255),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: couleur,
      appBar: AppBar(
        title: Text("Gestion Couleur"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              //changecouleurDepuisList();
              couleur = changecouleurAleat();
              /* if (couleur == Colors.blue) {
                couleur = Colors.pink;
              } else {
                couleur = Colors.blue;
              }*/
            });
          },
          child: Text("Changer Couleur"),
        ),
      ),
    );
  }
}
