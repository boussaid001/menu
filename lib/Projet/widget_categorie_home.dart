import 'package:flutter/material.dart';

class WidgetCategorieHome extends StatelessWidget {
  final String imagePath;
  final String categoryName;

  const WidgetCategorieHome({
    super.key,
    required this.imagePath,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.40,
          height: MediaQuery.of(context).size.width * 0.20,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 5.0), // Espace entre l'image et le texte
        Text(
          categoryName,
          style: TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }
}
