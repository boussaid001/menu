import 'package:flutter/material.dart';
import './../model/class_produit_panier.dart';
import './../my_widget/cart_empty.dart';
import './../my_widget/widget_produit_dans_panier.dart';
import './../provider/cart_provider.dart';
import 'package:provider/provider.dart';

class PanierScreen extends StatelessWidget {
  const PanierScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProduitPanier> contenuPanier =
        Provider.of<PanierProvider>(context, listen: false).Panier;
    print("xxxTAILLE PANIER=" + contenuPanier.length.toString());

    return contenuPanier.isEmpty
        ? Scaffold(
            body: CartEmpty(),
          )
        : Scaffold(
            //bottomSheet: chekcoutsection(cartProvider.totalAmount),
            appBar: AppBar(
              title: Text(
                "Nombre Produit: " + contenuPanier.length.toString(),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.remove),
                ),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.only(bottom: 120),
              child: ListView.builder(
                  itemCount: contenuPanier.length,
                  itemBuilder: (BuildContext ctx, int index) {
                    return WidgetProduitPanier(
                        produitPanier: contenuPanier[index]);
                  }),
            ),
          );

    //CartEmpty(),
  }

  Widget chekcoutsection(double total) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey, width: 0.5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: const WidgetStatePropertyAll(Colors.red),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              child: const Text(
                "Checkout",
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            const Text(
              "Total",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              total.toString(),
              style: const TextStyle(
                  color: Colors.blueAccent, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
