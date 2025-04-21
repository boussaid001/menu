import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/panier_provider.dart';
import '../my_widgets/widget_produit_dans_panier.dart';
import '../my_widgets/cart_empty.dart';
import '../model/mbj_class_produit_panier.dart';

class PanierScreen extends StatelessWidget {
  const PanierScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final contenuPanier = Provider.of<PanierProvider>(context, listen: true).Panier;

    return contenuPanier.isEmpty
        ? const Scaffold(
            body: CartEmpty(),
          )
        : Scaffold(
            appBar: AppBar(
              title: Text(
                "Nombre Produits: ${contenuPanier.length}",
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    Provider.of<PanierProvider>(context, listen: false).viderPanier();
                  },
                  icon: const Icon(Icons.delete),
                ),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.only(bottom: 120),
              child: ListView.builder(
                itemCount: contenuPanier.length,
                itemBuilder: (BuildContext context, int index) {
                  final produit = contenuPanier.values.toList()[index];
                  return WidgetProduitPanier(produitPanier: produit);
                },
              ),
            ),
            bottomSheet: checkoutSection(Provider.of<PanierProvider>(context).getTotal()),
          );
  }

  Widget checkoutSection(double total) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey, width: 0.5),
        ),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () {
              // Logique de checkout ici
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            child: const Text(
              "Valider l'achat",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                "Total:",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Text(
                "${total.toStringAsFixed(2)} €",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
