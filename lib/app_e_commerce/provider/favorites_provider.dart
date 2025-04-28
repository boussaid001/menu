import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../model/class_produit_fav.dart';

class FavoritesProvider with ChangeNotifier {
  List<ProduitFavori> _favorites = [];
  
  List<ProduitFavori> get favorites => _favorites;

  bool isFavorite(String productId) {
    return _favorites.any((item) => item.id == productId);
  }

  Future<void> loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final favoritesData = prefs.getString('favorites');
    
    if (favoritesData != null) {
      final List<dynamic> decodedData = json.decode(favoritesData);
      _favorites = decodedData.map((item) => ProduitFavori.fromJson(item)).toList();
    }
    notifyListeners();
  }

  Future<void> _saveFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final encodedData = json.encode(_favorites.map((item) => item.toJson()).toList());
    await prefs.setString('favorites', encodedData);
  }

  void addToFavorites(ProduitFavori produit) {
    if (!isFavorite(produit.id)) {
      _favorites.add(produit);
      _saveFavorites();
      notifyListeners();
    }
  }

  void removeFromFavorites(String productId) {
    _favorites.removeWhere((item) => item.id == productId);
    _saveFavorites();
    notifyListeners();
  }
} 