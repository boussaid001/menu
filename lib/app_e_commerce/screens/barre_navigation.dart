import 'package:flutter/material.dart';
import './home_page.dart';
import './list_produits.dart';
import './panier.dart';
import './user_info.dart';

class BarreNavigationScreen extends StatefulWidget {
  const BarreNavigationScreen({super.key});

  @override
  State<BarreNavigationScreen> createState() => _BarreNavigationScreenState();
}

class _BarreNavigationScreenState extends State<BarreNavigationScreen> {
  int selectedIndex = 1;
  List<Widget> myScreens = [
    HomeScreen(),
    ListProduitsScreen(),
    PanierScreen(),
    UserInfoScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myScreens[selectedIndex], //!
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          backgroundColor: Colors.purple,
          selectedItemColor: Colors.yellow,
          unselectedItemColor: Colors.white,
          currentIndex: selectedIndex,
          onTap: (int index) {
            //!
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: "Liste Produit",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: "Panier",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.face),
              label: "Profile",
            ),
          ]),
    );
  }
}
