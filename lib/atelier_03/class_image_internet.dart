import 'dart:math';
import 'package:flutter/material.dart';

class ImageFromInternet extends StatefulWidget {
  const ImageFromInternet({super.key});

  @override
  State<ImageFromInternet> createState() => _ImageFromInternetState();
}

class _ImageFromInternetState extends State<ImageFromInternet> {
  int code = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Changer image forom internet"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                code = Random().nextInt(1000);
              });
            },
            child: Text("Charger Image From internet"),
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.blue,
            child: Image.network(
              "https://picsum.photos/$code",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
