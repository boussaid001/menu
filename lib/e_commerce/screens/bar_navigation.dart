import 'package:flutter/material.dart';
import 'package:projetgl1/e_commerce/screens/home_page.dart';
import 'package:projetgl1/e_commerce/screens/liste_produit.dart';
import 'package:projetgl1/e_commerce/screens/panier.dart';
import 'package:projetgl1/e_commerce/screens/user_info.dart';

class BarNavigationScreen extends StatefulWidget {
  const BarNavigationScreen({super.key});

  @override
  State<BarNavigationScreen> createState() => _BarNavigationScreenState();
}

class _BarNavigationScreenState extends State<BarNavigationScreen> {
  int selectedIndex = 0;
  List<Widget> mesPages = [
    HomePageScreen(),
    ListProduitScreen(),
    PanierScreen(),
    UserInfoScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mesPages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.purple,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Accuiel",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Liste Prooduit",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "Panier",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face),
            label: "profil",
          ),
        ],
      ),
    );
  }
}
