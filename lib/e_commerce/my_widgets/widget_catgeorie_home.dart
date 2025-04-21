import 'package:flutter/material.dart';


class WidegtCategorieHome extends StatelessWidget {
  String nomImage = "";
  String textImage = "";

  WidegtCategorieHome(
      {required this.nomImage, required this.textImage, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.2,
          child: InkWell(
            child: Image.asset(
              nomImage,
              fit: BoxFit.fill,
            ),
            onTap: () {
              print("click sur image");
            },
          ),
        ),
        Text(textImage),
      ],
    );
  }
}
