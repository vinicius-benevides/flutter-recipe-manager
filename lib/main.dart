import 'package:flutter/material.dart';
import 'package:recipe_manager/screens/categories_meals_screen.dart';
import 'package:recipe_manager/screens/meal_detail_screen.dart';
import 'package:recipe_manager/screens/not_found_screen.dart';
import 'package:recipe_manager/screens/settings_screen.dart';
import 'package:recipe_manager/screens/tabs_screen.dart';
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
        AppRoutes.home: (ctx) => TabsScreen(),
        AppRoutes.categoriesMeals: (ctx) => CategoriesMealsScreen(),
        AppRoutes.meailDetail: (ctx) => MealDetailScreen(),
        AppRoutes.settings: (ctx) => SettingsScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (_) {
            return NotFoundScreen();
          },
        );
      },
    );
  }
}
