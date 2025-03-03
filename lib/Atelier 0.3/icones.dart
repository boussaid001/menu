import 'dart:math';

import 'package:flutter/material.dart';

class ChangerIconeState extends StatefulWidget {
  const ChangerIconeState({super.key});

  @override
  State<ChangerIconeState> createState() => _ChangerIconeStateState();
}

class _ChangerIconeStateState extends State<ChangerIconeState> {
  //ICON => Widget
  //nom icon =>IconData
  //icone =>CODE
  //code => taille => 6 caracteres => HEXA
  //code => 0XE???
  //0..9, A..F

  genererCodeIcon() {
    String ch = "0123456789ABCDEF";
    String code = "0XE";
    int i = Random().nextInt(ch.length);
    for (int j = 0; j < 3; j++) {
      code = code + ch[i];
    }
    print(code);
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
        title: Text("Changer icone"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                setState(() {
                  //changerIcone();
                  //icone = mesIcones[i];
                  icone = genererCodeIcon();
                });
              },
              child: Text("Changer icone")),
          Icon(icone, size: 50, color: Colors.blue),
        ],
      ),
    );
  }
}
