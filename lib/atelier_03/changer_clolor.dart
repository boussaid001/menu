import 'dart:math';

import 'package:flutter/material.dart';

class ChangeBackgroundColor extends StatefulWidget {
  const ChangeBackgroundColor({super.key});

  @override
  State<ChangeBackgroundColor> createState() => _ChangeBackgroundColorState();
}

class _ChangeBackgroundColorState extends State<ChangeBackgroundColor> {
  Color? couleur = Colors.red;
  int i = 0;
  List<Color> couleurs = [
    Colors.green,
    Colors.pink,
    Colors.orange,
    Colors.blue,
    Colors.purpleAccent
  ];
  switchtwoColors() {
    if (couleur == Colors.red) {
      couleur = Colors.blue;
    } else {
      couleur = Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: couleur,
      appBar: AppBar(
        title: Text("Changer couleurss"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              //switchtwoColors();
              if (i < couleurs.length)
                i++;
              else
                i = 0;
              couleur = couleurs[i];
              couleur = Color.fromARGB(
                  Random().nextInt(255),
                  Random().nextInt(255),
                  Random().nextInt(255),
                  Random().nextInt(05));
            });
          },
          child: Text("Changer Couleur"),
        ),
      ),
    );
  }
}
