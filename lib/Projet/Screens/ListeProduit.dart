import 'package:flutter/material.dart';

class ListeProduitScreen extends StatefulWidget {
  const ListeProduitScreen({super.key});

  @override
  State<ListeProduitScreen> createState() => _ListeProduitScreenState();
}

class _ListeProduitScreenState extends State<ListeProduitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liste des produits"),
      ),
      body: Text("Liste des produits"),
    );
  }
}
