import 'package:flutter/material.dart';
import 'package:recipe_manager/screens/categories_screen.dart';
import 'package:recipe_manager/themes/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      debugShowCheckedModeBanner: false,
      theme: mainTheme(),
      home: CategoriesScreen(),
    );
  }
}
