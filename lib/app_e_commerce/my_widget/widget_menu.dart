import 'package:flutter/material.dart';
import './../screens/list_produits.dart';

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
            decoration: BoxDecoration(
              color: Colors.purple,
            ),
            accountName: Text("User 1"),
            accountEmail: Text("user1@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://png.pngtree.com/png-vector/20220709/ourmid/pngtree-businessman-user-avatar-wearing-suit-with-red-tie-png-image_5809521.png"),
              radius: 5.0,
            ),
          ),
          Divider(),
          ListTile(
            title: Text("Acceuil"),
            leading: Icon(Icons.home),
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
          ListTile(
            title: Text("Liste des Produits"),
            leading: Icon(Icons.list),
            onTap: () {
              //Navigator.pushNamed(context, '/listproduit');
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ListProduitsScreen()));
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
            leading: Icon(Icons.person),
            onTap: () {
              Navigator.pushNamed(context, '/userProfile');
            },
          ),
          ListTile(
            title: Text("Logout"),
            leading: Icon(Icons.exit_to_app),
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
        ],
      ),
    );
  }
}
