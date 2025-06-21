import 'package:flutter/material.dart';
import 'package:recipe_manager/data/dummy_data.dart';
import 'package:recipe_manager/models/meal.dart';
import 'package:recipe_manager/models/settings.dart';
import 'package:recipe_manager/screens/categories_meals_screen.dart';
import 'package:recipe_manager/screens/meal_detail_screen.dart';
import 'package:recipe_manager/screens/not_found_screen.dart';
import 'package:recipe_manager/screens/settings_screen.dart';
import 'package:recipe_manager/screens/tabs_screen.dart';
import 'package:recipe_manager/themes/main.dart';
import 'package:recipe_manager/utils/consts/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Meal> _availableMeals = dummyMeals;
  Settings settings = Settings();

  void _filterMeals(Settings settings) {
    setState(() {
      _availableMeals = dummyMeals.where((meal) {
        return (!settings.isGlutenFree || meal.isGlutenFree) &&
            (!settings.isLactoseFree || meal.isLactoseFree) &&
            (!settings.isVegan || meal.isVegan) &&
            (!settings.isVegetarian || meal.isVegetarian);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      debugShowCheckedModeBanner: false,
      theme: mainTheme(),
      routes: {
        AppRoutes.home: (ctx) => TabsScreen(),
        AppRoutes.categoriesMeals: (ctx) =>
            CategoriesMealsScreen(meals: _availableMeals),
        AppRoutes.meailDetail: (ctx) => MealDetailScreen(),
        AppRoutes.settings: (ctx) =>
            SettingsScreen(settings: settings, onSettingsChanged: _filterMeals),
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
