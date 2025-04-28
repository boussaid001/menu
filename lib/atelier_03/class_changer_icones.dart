import 'dart:math';
import 'package:flutter/material.dart';

class ChangerIcones extends StatefulWidget {
  const ChangerIcones({super.key});

  @override
  State<ChangerIcones> createState() => _ChangerIconesState();
}

class _ChangerIconesState extends State<ChangerIcones> {
  @override
  List<IconData> icones = [
    Icons.add,
    Icons.abc_rounded,
    Icons.price_change,
    Icons.access_time_sharp
  ];
  IconData icone = Icons.ac_unit;
  int i = 0;
  IconData generericoneAleatoire() {
    String ch = "0123456789ABCDEF";
    String code = "0XE";
    int index = Random().nextInt(ch.length);
    code = code + ch[index];
    index = Random().nextInt(ch.length);
    code = code + ch[index];
    index = Random().nextInt(ch.length);
    code = code + ch[index];

    return IconData(int.parse(code), fontFamily: 'MaterialIcons');
    //
    // chaque icone => code unique
    /*
   code => taille de 6 carateres en hexa
   il cpmmce => 0XE4AE
   =>3 [ 0..9 a..f]

  */
  }

  void affichericone() {
    if (i < icones.length - 1) {
      i++;
    } else {
      i = 0;
    }
    icone = icones[i];
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chanegr icones"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                //affichericone();
                icone = generericoneAleatoire();
              });
            },
            child: Text("Changer Icone"),
          ),
          Icon(
            icone,
            size: 50.0,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
