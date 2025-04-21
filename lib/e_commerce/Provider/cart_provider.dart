import 'package:flutter/material.dart';

class PanierProvider with ChangeNotifier {
  List<ProduitPanier> _panier = [];
  List<ProduitPanier> get Panier {
    return _panier;
  }
  void ajouterProduit(String productId, double price, String title,
      String description, String imageUrl) {
    ProduitPanier? produitTrouve = _panier.firstWhere(
      (art) {
        if (art.id == productId) {
          art.quantite += 1;
          return true;
        }
        return false;
      },
      orElse: () {
        print("Ajout new produit :$productId");
        final nouveauProduit = ProduitPanier(
          id: productId,
          title: title,
          description: description,
          price: price,
          imageUrl: imageUrl,
          quantite: 1,
        );
        _panier.add(nouveauProduit);
        return nouveauProduit;
      },
    );
    notifyListeners();
  }
}