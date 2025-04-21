/*
 1. genretaion d'uen icone à partir d'une liste d'icone
 2. génération d'une icone aleaoire
 ----
 3. image (web , local )+ gridview 
*/
import 'dart:math';

import 'package:flutter/material.dart';

class ChangerIcone extends StatefulWidget {
  const ChangerIcone({super.key});

  @override
  State<ChangerIcone> createState() => _ChangerIconeState();
}

class _ChangerIconeState extends State<ChangerIcone> {
  // ICON => Widget
  // nom icon => IconData
  // icone => CODE
  //code => taille => 6 caracteres => HEXA
  // code = 0XE3F1
  // 0..9.A.B.C.D.E.F

  IconData genererCodeIcon() {
    String ch = "0123456789ABCDEF";
    String code = "0XE";
    int i = Random().nextInt(ch.length);
    code = code + ch[i];
    i = Random().nextInt(ch.length);
    code = code + ch[i];
    i = Random().nextInt(ch.length);
    code = code + ch[i];
    return IconData(int.parse(code), fontFamily: "MaterialIcons");
  }

  List<IconData> mesIcones = [
    Icons.abc_rounded,
    Icons.access_time_rounded,
    Icons.accessible_forward_outlined
  ];
  int i = 0;
  IconData icone = Icons.add;
  changerIcone() {
    if (i < mesIcones.length - 1) {
      i++;
    } else {
      i = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Changer icone"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  icone = genererCodeIcon();
                  //changerIcone();
                  //icone = mesIcones[i];
                });
              },
              child: Text("Changer icone"),
            ),
            Icon(icone, size: 50, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
