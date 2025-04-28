import 'package:flutter/material.dart';

class Exercice4 extends StatefulWidget {
  const Exercice4({super.key});

  @override
  State<Exercice4> createState() => _Exercice4State();
}

class _Exercice4State extends State<Exercice4> {
  int cpt = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercice 4"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            addButon("+", Colors.blue, () {
              //cpt = cpt + 1;
              setState(() {
                if (cpt < 10)
                  cpt++;
                else {
                  cpt = 0;
                }
              });

              print("CPT=$cpt");
            }),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
            ),
            Text(
              cpt.toString(),
              style: TextStyle(color: Colors.red, fontSize: 26.0),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
            ),
            addButon("-", Colors.blue, () {
              setState(() {
                if (cpt > 0) cpt--;
              });

              print("CPT=$cpt");
            }),
          ],
        ),
      ),
    );
  }

  Widget addButon(String txt, Color? couleur, void Function()? traitement) {
    return ElevatedButton(
      onPressed: traitement,
      child: Text(
        txt,
        style: TextStyle(fontSize: 20.0),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: couleur,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      ),
    );
  }
}
