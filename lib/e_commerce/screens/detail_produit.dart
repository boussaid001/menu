import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/class_produit.dart';
import '../model/list_produit_data.dart';
import '../Provider/panier_provider.dart';
import '../model/mbj_class_produit_panier.dart';

class ProduitDetailScreen extends StatefulWidget {
  const ProduitDetailScreen({super.key});

  @override
  State<ProduitDetailScreen> createState() => _ProduitDetailScreenState();
}

class _ProduitDetailScreenState extends State<ProduitDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Produit p = ModalRoute.of(context)!.settings.arguments as Produit;
    final idProduit = p.id;

    Produit produitDetail = ListProduit().findOneById(idProduit.toString());

    return Scaffold(
      appBar: AppBar(
        title: Text(produitDetail.title),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/panier');
            },
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            foregroundDecoration: const BoxDecoration(color: Colors.black12),
            height: MediaQuery.of(context).size.height * 0.45,
            width: double.infinity,
            child: Image.network(produitDetail.imageUrl),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.only(top: 16, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 250.0),
                Container(
                  color: Colors.grey[300],
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          produitDetail.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Text(
                        "${produitDetail.price.toStringAsFixed(2)} €",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 20,
                        ),
                      ),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          produitDetail.description,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Divider(),
                      infoProduct("Brand", produitDetail.brand),
                      infoProduct("Quantity", produitDetail.quantity.toString()),
                      infoProduct("Category", produitDetail.produitCategoryName),
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
                          fontWeight: FontWeight.w600,
                          fontSize: 21,
                        ),
                      ),
                      Text(
                        "Be the first to review ...",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                // Boutons en bas
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 2,
                        child: ElevatedButton(
                          onPressed: () {
                            // Convert Produit to ProduitPanier
                            final produitPanier = ProduitPanier(
                              id: produitDetail.id,
                              title: produitDetail.title,
                              price: produitDetail.price,
                              imageUrl: produitDetail.imageUrl,
                            );
                            
                            // Add to cart using provider
                            Provider.of<PanierProvider>(context, listen: false)
                                .ajouterProduit(produitPanier);
                                
                            // Show success message and navigate to cart
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: const Text('Produit ajouté au panier'),
                                duration: const Duration(seconds: 1),
                                backgroundColor: Colors.green,
                                behavior: SnackBarBehavior.floating,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            );

                            // Navigate to cart after a short delay to show the snackbar
                            Future.delayed(const Duration(milliseconds: 500), () {
                              Navigator.pushNamed(context, '/panier');
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                          ),
                          child: const Text(
                            "Add to Cart",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      ElevatedButton.icon(
                        onPressed: () {},
                        label: const Text("Buy Now"),
                        icon: const Icon(Icons.credit_card),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 12),
                        ),
                      ),
                      const SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 12),
                        ),
                        child: const Icon(Icons.favorite_border),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void afficherMessage(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
        duration: const Duration(seconds: 2),
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        action: SnackBarAction(
          label: "Voir panier",
          textColor: Colors.white,
          onPressed: () {
            Navigator.pushNamed(context, '/panier');
          },
        ),
      ),
    );
  }

  Widget infoProduct(String name, String value) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            "$name:",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(width: 10),
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
