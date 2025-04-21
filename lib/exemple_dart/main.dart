import 'package:flutter/material.dart';
import 'package:projetgl1/atelier_02/exercice1_poo.dart';
import 'package:projetgl1/atelier_02/exercice4.dart';
import 'package:projetgl1/atelier_03/class_gestion_couleur.dart';
import 'package:projetgl1/atelier_03/class_gestion_icone.dart';
import 'package:projetgl1/atelier_03/class_gridview.dart';
import 'package:projetgl1/atelier_03/class_image.dart';

void main() {
  runApp(Myapp());
}

/*
  StatelessWidget => Data + attribut vontetre fix: 1 ETAT ( Debut ..fin )
     => stl
  StatefulWidget => Date + attribt: modifiable= > N ETAT
     => stf

*/
class Myapp extends StatelessWidget {
  Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
          //Exercice1(),
          //Compteur(),
          //GestionCouleurs(),
          //ChangerIcone(),
          //Images(),
          Grid1(),
    );
  }
}
