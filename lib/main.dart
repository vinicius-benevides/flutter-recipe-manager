import 'package:flutter/material.dart';
import 'package:recipe_manager/screens/categories_meals_screen.dart';
import 'package:recipe_manager/screens/categories_screen.dart';
import 'package:recipe_manager/themes/main.dart';
import 'package:recipe_manager/utils/consts/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      debugShowCheckedModeBanner: false,
      theme: mainTheme(),
      routes: {
        AppRoutes.home: (ctx) => CategoriesScreen(),
        AppRoutes.categoriesMeals: (ctx) => CategoriesMealsScreen(),
      },
    );
  }
}
