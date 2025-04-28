import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './../model/class_produit_panier.dart';

class PanierProvider with ChangeNotifier {
  List<ProduitPanier> _panier = [];
  List<ProduitPanier> get Panier {
    return _panier;
  }

// Charger le panier depuis SharedPreferences
  Future<void> loadCart() async {
    final prefs = await SharedPreferences.getInstance();
    final cartData = prefs.getString('cart');

    if (cartData != null) {
      final List<dynamic> decodedData = json.decode(cartData);
      _panier =
          decodedData.map((item) => ProduitPanier.fromJson(item)).toList();
    } else {
      _panier = [];
    }
    notifyListeners();
  }

  // Sauvegarder le panier dans SharedPreferences
  Future<void> _saveCart() async {
    final prefs = await SharedPreferences.getInstance();

    final encodedData =
        json.encode(_panier.map((item) => item.toJson()).toList());

    await prefs.setString('cart', encodedData);
    //await loadCart();
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
    _saveCart();
    notifyListeners();
  }
}
