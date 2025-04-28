import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _cpt = 0;
  int? tmp = 0;

  Future saveData() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.setInt("compteur", _cpt);
  }

  Future<void> chargerData() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    setState(() {
      _cpt = _prefs!.getInt("compteur") ?? 0; 
    });
  }

  Future reset() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.remove("compteur");
    setState(() {
      _cpt = 0;
    });
  }

  @override
  void initState() {
    super.initState();
    chargerData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Test Copteur avec SH_pref"),
        ),
        body: Column(
          children: [
            Text("Valeur Compteur"),
            Text(_cpt.toString()),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _cpt += 1;
                });
                saveData();
              },
              child: Text("Incrementer"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _cpt -= 1;
                });
                saveData();
              },
              child: Text("Décreméneter"),
            ),
            ElevatedButton(
              onPressed: () {
                reset();
              },
              child: Text("reset"),
            ),
          ],
        ),
      ),
    );
  }
}
