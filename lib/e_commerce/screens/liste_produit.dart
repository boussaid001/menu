import 'package:flutter/material.dart';
import 'package:projetgl1/e_commerce/model/list_produit_data.dart';
import 'package:projetgl1/e_commerce/my_widgets/widget_un_produit.dart';


class ListProduitScreen extends StatefulWidget {
  const ListProduitScreen({super.key});

  @override
  State<ListProduitScreen> createState() => _ListProduitScreenState();
}

class _ListProduitScreenState extends State<ListProduitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liste produit"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
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
