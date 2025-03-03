import 'package:flutter/material.dart';
import 'package:projetgl1/Projet/Screens/Home.dart';
import 'package:projetgl1/Projet/Screens/ListeProduit.dart';
import 'package:projetgl1/Projet/Screens/UserInfo.dart';
import 'package:projetgl1/Projet/Screens/panier.dart';

class BarreNavigation extends StatefulWidget {
  const BarreNavigation({super.key});

  @override
  State<BarreNavigation> createState() => _BarreNavigationState();
}

class _BarreNavigationState extends State<BarreNavigation> {
  int selectedIndex = 0;
  List<Widget> myScreens = [
    HomeScreen(),
    ListeProduitScreen(),
    PanierScreen(),
    UserInfoScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myScreens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Accueil"),
          BottomNavigationBarItem(
              icon: Icon(Icons.list), label: "Liste Produits"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: "Panier"),
          BottomNavigationBarItem(icon: Icon(Icons.face), label: "Profil")
        ],
      ),
    );
  }
}
