import 'package:flutter/material.dart';
import 'package:translator_app/pages/home_page.dart';
import 'package:translator_app/pages/color_page.dart';
import 'package:translator_app/pages/family_page.dart';
import 'package:translator_app/pages/number_page.dart';
import 'package:translator_app/pages/phrase_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,theme: ThemeData(
        useMaterial3: false,
      ),
      routes: {
        "home":(context)=>const HomePage(),
        "numbers":(context)=>const NumberPage(),
        "family":(context)=>const FamilyPage(),
        "colors":(context)=>const ColorPage(),
        "phrases":(context)=>const PhrasePage(),
      },
      initialRoute: "home",
    );
  }
}
