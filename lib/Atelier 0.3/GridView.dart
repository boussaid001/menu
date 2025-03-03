import 'dart:math';

import 'package:flutter/material.dart';

class Grid1 extends StatefulWidget {
  const Grid1({super.key});

  @override
  State<Grid1> createState() => _Grid1State();
}

class _Grid1State extends State<Grid1> {
  int code = 1200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gestion image"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  code = Random().nextInt(1000);
                });
              },
              child: const Text("Grid View"),
            ),
            Expanded(
                child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(30, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.blue,
                      child: Image.asset("assets/img/zoro.webp",
                          fit: BoxFit.cover)),
                );
              }),
            ))
          ],
        ),
      ),
    );
  }
}
