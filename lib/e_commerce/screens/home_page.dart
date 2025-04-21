

import 'package:flutter/material.dart';
import 'package:lecle_flutter_carousel_pro/lecle_flutter_carousel_pro.dart';
import 'package:projetgl1/e_commerce/const/mes_images.dart';
import 'package:projetgl1/e_commerce/my_widgets/widget_catgeorie_home.dart';
import 'package:projetgl1/e_commerce/my_widgets/widget_menu.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(
        title: Text("home page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: Carousel(
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
                images:
                    List.generate(MesImages.imagesCaroussel.length, (index) {
                  return Image.asset(MesImages.imagesCaroussel[index]);
                })),
          ),
          Container(
            //width: MediaQuery.of(context).size.width,
            width: double.infinity,
            color: Colors.black,
            child: Center(
              child: Text(
                "Catégories",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(
                  MesImages.imagesCategories.length,
                  (index) {
                    return WidegtCategorieHome(
                      nomImage: MesImages.imagesCategories[index],
                      textImage: MesImages.textimageCategorie[index],
                    );
                  },
                ),
              ),
            ),
          ),
          Container(
            //width: MediaQuery.of(context).size.width,
            width: double.infinity,
            color: Colors.black,
            child: Center(
              child: Text(
                "Marques",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(
                  MesImages.imagesCategories.length,
                  (index) {
                    return WidegtCategorieHome(
                      nomImage: MesImages.imagesCategories[index],
                      textImage: MesImages.textimageCategorie[index],
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
