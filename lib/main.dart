import 'package:flutter/material.dart';
import 'package:projetgl1/Atelier%200.3/GridView.dart';
import 'package:projetgl1/Atelier%200.3/couleurs.dart';
import 'package:projetgl1/Atelier%200.3/icones.dart';
import 'package:projetgl1/Atelier%200.3/images.dart';
import 'package:projetgl1/Atelier/exercice1.dart';
import 'package:projetgl1/Atelier/exercice4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:
            //Exercice1(),  Reference to the separate Exercice1 file
            //Compteur(),
            //GestionCouleurs(),
            //ChangerIconeState(),
            //Images()
            Grid1());
  }
}
