import 'package:flutter/material.dart';

class Compteur extends StatefulWidget {
  const Compteur({super.key});

  @override
  _CompteurState createState() => _CompteurState();
}

class _CompteurState extends State<Compteur> {
  int _count = 0;
  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Compteur")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: _increment, child: const Text("+")),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                '$_count',
                style: const TextStyle(fontSize: 24),
              ),
            ),
            ElevatedButton(onPressed: _decrement, child: const Text("-")),
          ],
        ),
      ),
    ); // Remplace par ton UI
  }
}
