import 'package:flutter/material.dart';
import 'package:projetgl1/e_commerce/screens/home_page.dart';


class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Nom user"),
            accountEmail: Text("email@gmail.comaccountEmail"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn.vectorstock.com/i/1000v/51/87/student-avatar-user-profile-icon-vector-47025187.jpg"),
            ),
          ),
          Divider(),
          ListTile(
            title: Text("Accueil"),
            leading: Icon(Icons.home),
            onTap: () {
              //Navigator.pushNamed(context, '/home');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomePageScreen()));
            },
          ),
          ListTile(
            title: Text("Liste des Produits"),
            leading: Icon(Icons.list),
            onTap: () {
              Navigator.pushNamed(context, '/listproduit');
            },
          ),
          ListTile(
            title: Text("Panier"),
            leading: Icon(Icons.shop),
            onTap: () {
              Navigator.pushNamed(context, '/panier');
            },
          ),
          ListTile(
            title: Text("Profile"),
            leading: Icon(Icons.face),
            onTap: () {
              Navigator.pushNamed(context, '/profileuser');
            },
          ),
        ],
      ),
    );
  }
}
