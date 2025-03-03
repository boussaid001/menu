import 'package:flutter/material.dart';
import 'package:projetgl1/Projet/Screens/Home.dart';
import 'package:projetgl1/Projet/Screens/PageBarNavigation.dart';
import 'package:projetgl1/main.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BarreNavigation(),
    );
  }
}
