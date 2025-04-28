import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './../model/class_produit.dart';
import './../provider/cart_provider.dart';


class ProduitDetailScreen extends StatefulWidget {
  const ProduitDetailScreen({super.key});
  @override
  State<ProduitDetailScreen> createState() => _ProduitDetailScreenState();
}

class _ProduitDetailScreenState extends State<ProduitDetailScreen> {
  //Produit p = ListProduit().Produits[5];

  @override
  Widget build(BuildContext context) {
    Produit p = ModalRoute.of(context)!.settings.arguments as Produit;

    return Scaffold(
      appBar: AppBar(
        title: Text(p.id.toString()),
      ),
      body: Stack(
        children: [
          Container(
            foregroundDecoration: const BoxDecoration(color: Colors.black12),
            height: MediaQuery.of(context).size.height * 0.45,
            width: double.infinity,
            child: Image.network(p.imageUrl),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.only(top: 16, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 250.0,
                ),
                Container(
                  color: Colors.grey[300],
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          p.description,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        p.price.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          p.description,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Divider(),
                      infoProduct("Brand", p.brand),
                      infoProduct("Quantity", p.quantity.toString()),
                      infoProduct("Category", p.produitCategoryName),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: const Column(
                    children: [
                      Text(
                        "Aucun Review",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 21),
                      ),
                      Text(
                        "Be the first to revview ...",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                //bouton en bas
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        onPressed: () {
                          Provider.of<PanierProvider>(context, listen: false)
                              .ajouterProduit(p.id, p.price, p.title,
                                  p.description, p.imageUrl);
                          showSnackBarMessage(
                              context, "Produit Ajouté dans le panier");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink,
                          foregroundColor: Colors.white,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero),
                        ),
                        child: const Text("Add to Cart"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        label: const Text("Buy Now"),
                        icon: const Icon(Icons.credit_card),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          print("ee");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero),
                        ),
                        child: Icon(Icons.favorite),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  showSnackBarMessage(BuildContext context, String message) {
    var _snackBar = SnackBar(
      content: Text(
        message.toString(),
      ),
      duration: Duration(seconds: 3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(26.0),
      ),
      backgroundColor: Colors.green[400],
      action: SnackBarAction(label: "ok", onPressed: () {}),
    );
    ScaffoldMessenger.of(context).showSnackBar(_snackBar);
  }

  Widget infoProduct(String name, String value) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        children: [
          Text(
            "$name:",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            value,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
//https://codeshare.io/5MwWqG