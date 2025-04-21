import 'package:flutter/foundation.dart';
import '../model/mbj_class_produit_panier.dart';

class PanierProvider with ChangeNotifier {
  Map<String, ProduitPanier> _panier = {};

  Map<String, ProduitPanier> get Panier => _panier;

  void ajouterProduit(ProduitPanier produit) {
    if (_panier.containsKey(produit.id)) {
      _panier[produit.id]!.quantite++;
    } else {
      _panier[produit.id] = produit;
    }
    notifyListeners();
  }

  void supprimerProduit(String id) {
    _panier.remove(id);
    notifyListeners();
  }

  void incrementerQuantite(String id) {
    if (_panier.containsKey(id)) {
      _panier[id]!.quantite++;
      notifyListeners();
    }
  }

  void decrementerQuantite(String id) {
    if (_panier.containsKey(id)) {
      if (_panier[id]!.quantite > 1) {
        _panier[id]!.quantite--;
      } else {
        // If quantity becomes 0, remove the product from cart
        supprimerProduit(id);
      }
      notifyListeners();
    }
  }

  void viderPanier() {
    _panier.clear();
    notifyListeners();
  }

  double getTotal() {
    double total = 0.0;
    _panier.forEach((key, produit) {
      total += produit.price * produit.quantite;
    });
    return total;
  }

  int getNombreProduits() {
    return _panier.length;
  }
} 