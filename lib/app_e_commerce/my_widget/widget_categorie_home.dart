import 'package:flutter/material.dart';

class MyWidgetCategorieHome extends StatelessWidget {
  String nomImage = "";
  String textImage = "";
  MyWidgetCategorieHome(
      {required this.nomImage, required this.textImage, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6, left: 6, top: 6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.2,
              child: Image.asset(
                nomImage,
                fit: BoxFit.cover,
              ),
            ),
            onTap: () {
              print("click sur image");
            },
          ),
          Text(
            textImage,
          )
        ],
      ),
    );
  }
}
