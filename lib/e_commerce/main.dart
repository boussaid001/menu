import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Provider/panier_provider.dart';
import 'screens/bar_navigation.dart';
import 'screens/detail_produit.dart';
import 'screens/home_page.dart';
import 'screens/liste_produit.dart';
import 'screens/panier.dart';
import 'screens/user_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PanierProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
        ),
        routes: {
          '/home': (context) => const HomePageScreen(),
          '/listproduit': (context) => const ListProduitScreen(),
          '/detailproduit': (context) => const ProduitDetailScreen(),
          '/profileuser': (context) => const UserInfoScreen(),
          '/panier': (context) => const PanierScreen(),
        },
        home: const BarNavigationScreen(),
      ),
    );
  }
}
