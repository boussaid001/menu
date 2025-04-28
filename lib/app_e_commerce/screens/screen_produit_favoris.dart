import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/favorites_provider.dart';
import '../my_widget/widget_produit_favori.dart';

class ScreenProduitFavoris extends StatelessWidget {
  const ScreenProduitFavoris({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mes Favoris'),
        backgroundColor: Colors.purple,
      ),
      body: Consumer<FavoritesProvider>(
        builder: (context, favoritesProvider, child) {
          if (favoritesProvider.favorites.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.favorite_border, size: 64, color: Colors.yellow),
                  SizedBox(height: 16),
                  Text('Aucun favori pour le mo,ment'),
                ],
              ),
            );
          }

          return GridView.builder(
            padding: EdgeInsets.all(8),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemCount: favoritesProvider.favorites.length,  
            itemBuilder: (context, index) {
              final produit = favoritesProvider.favorites[index];
              return WidgetProduitFavori(
                produit: produit,
                onRemove: () {
                  favoritesProvider.removeFromFavorites(produit.id);
                },
              );
            },
          );
        },
      ),
    );
  }
} 