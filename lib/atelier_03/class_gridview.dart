import 'dart:math';

import 'package:flutter/material.dart';

class Grid1 extends StatefulWidget {
  const Grid1({super.key});

  @override
  State<Grid1> createState() => _Grid1State();
}

class _Grid1State extends State<Grid1> {
  int code = 100;
  List<String> listurl = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gestion image"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  code = Random().nextInt(1000);
                  listurl.add("https://picsum.photos/$code");
                });
              },
              child: Text("Grid view"),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                children: List.generate(listurl.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.red,
                      child: Image.asset(
                        "assets/img/image1.jpg",
                        fit: BoxFit.cover,
                      ),
                      //Image.network(listurl[index], fit: BoxFit.cover),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
