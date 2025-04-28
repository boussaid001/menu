import 'package:flutter/material.dart';
import './/atelier_02/exercice02.dart';
import './atelier_02/exercice04.dart';
import './atelier_03/changer_clolor.dart';
import './atelier_03/class_Image_gridview.dart';
import './atelier_03/class_changer_icones.dart';
import './atelier_03/class_image_internet.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageGridV(),
      //ImageFromInternet(),
      //ChangerIcones(),
      //Exercice1(),
      //Exercice4(),
      //ChangeBackgroundColor(),
    );
  }
}
