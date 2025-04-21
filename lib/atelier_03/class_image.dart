import 'dart:math';

import 'package:flutter/material.dart';

class Images extends StatefulWidget {
  const Images({super.key});

  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  int code = 80;
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
                });
              },
              child: Text("Charger image"),
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.red,
              child: Image.network("https://picsum.photos/$code",
                  fit: BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }
}
