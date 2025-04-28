import 'package:flutter/material.dart';
import 'package:lecle_flutter_carousel_pro/lecle_flutter_carousel_pro.dart';

import './../const/mes_images.dart';
import './../my_widget/widget_categorie_home.dart';
import './../my_widget/widget_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(
        title: Text("Home page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.7,
            child: const Carousel(
              hasBorderRadius: true,
              boxFit: BoxFit.cover,
              autoplay: true,
              animationCurve: Curves.fastOutSlowIn,
              animationDuration: Duration(milliseconds: 1000),
              dotSize: 6.0,
              dotIncreasedColor: Color(0xFFFF335C),
              dotBgColor: Colors.transparent,
              dotPosition: DotPosition.bottomCenter,
              dotVerticalPadding: 10.0,
              dotColor: Colors.grey,
              showIndicator: true,
              indicatorBgPadding: 7.0,
              images: [
                NetworkImage(
                    'https://jackfruit.com.vn/content/images/2022/01/6078b650748b8558d46ffb7f_Flutter-app-development.png'),
                NetworkImage(
                    'https://docs.flutter.dev/assets/images/flutter-logo-sharing.png'),
                ExactAssetImage('assets/images/LaunchImage.jpg'),
              ],
            ),
          ),

          ///

          Container(
            width: double.infinity,
            color: Colors.black,
            child: Text(
              "Catégories",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
          //Ligne pour afficher les Catégories
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children:
                    List.generate(MesImages.imageCategories.length, (index) {
              return MyWidgetCategorieHome(
                  nomImage: MesImages.imageCategories[index],
                  textImage: MesImages.textimageCategories[index]);
            })),
          ),
          Container(
            width: double.infinity,
            color: Colors.black,
            child: Text(
              "Marques",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
          //Ligne pour afficher les Catégories
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children:
                    List.generate(MesImages.imageCategories.length, (index) {
              return MyWidgetCategorieHome(
                  nomImage: MesImages.imageCategories[index],
                  textImage: MesImages.textimageCategories[index]);
            })),
          ),
        ],
      ),
    );
  }
}
