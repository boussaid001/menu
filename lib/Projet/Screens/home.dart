import 'package:flutter/material.dart';
import 'package:projetgl1/Projet/Const/mesImages.dart';
import 'package:projetgl1/Projet/widget_categorie_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.18),
          Container(
            color: Colors.black,
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Center(
              child: Text(
                "Categories",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Wrap(
              spacing: 15.0,
              runSpacing: 15.0,
              alignment: WrapAlignment.center,
              children: List.generate(
                Mesimages.ImagesCategories.length,
                (index) => WidgetCategorieHome(
                  imagePath: Mesimages.ImagesCategories[index],
                  categoryName: Mesimages.nomCategories[index],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
