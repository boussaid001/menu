import 'package:flutter/material.dart';
import './../model/list_produits_data.dart';
import './../my_widget/widget_produit.dart';

class ListProduitsScreen extends StatelessWidget {
  ListProduitsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liste des articles"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        childAspectRatio: 0.40,
        children: List.generate(
          ListProduit().Produits.length,
          (index) {
            return WidgetProduit(produit: ListProduit().Produits[index]);
          },
        ),
      ),
    );
  }
}
