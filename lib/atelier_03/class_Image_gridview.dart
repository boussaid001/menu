import 'dart:math';
import 'package:flutter/material.dart';

class ImageGridV extends StatefulWidget {
  const ImageGridV({super.key});

  @override
  State<ImageGridV> createState() => _ImageGridVState();
}

class _ImageGridVState extends State<ImageGridV> {
  int code = 100;
  List<String> urls = []; //!! 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Grid View"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                code++;
                urls.add("https://picsum.photos/$code"); //!
              });
            },
            child: Text("Charger Image Grid view"),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(urls.length, (index) { //!
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.blue,
                    child: Image.network(
                      urls[index], //!
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
