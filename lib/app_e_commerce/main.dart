import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './provider/cart_provider.dart';
import './provider/favorites_provider.dart';
import './screens/barre_navigation.dart';
import './screens/detail_produit.dart';
import './screens/home_page.dart';
import './screens/list_produits.dart';
import './screens/panier.dart';
import './screens/user_info.dart';


void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => PanierProvider()),
    ChangeNotifierProvider(create: (context) => FavoritesProvider()),
  ], child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Provider.of<PanierProvider>(context, listen: false).loadCart();
    Provider.of<FavoritesProvider>(context, listen: false).loadFavorites();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => HomeScreen(),
        '/listproduit': (context) => ListProduitsScreen(),
        '/panier': (context) => PanierScreen(),
        '/userProfile': (context) => UserInfoScreen(),
        '/detailProduit': (context) => ProduitDetailScreen(),
        
      },
      home: BarreNavigationScreen(),
    );
  }
}
