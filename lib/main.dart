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
  Settings settings = Settings();

  List<Meal> _availableMeals = dummyMeals;
  final List<Meal> _favoriteMeals = [];

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

  void _toggleFavorite(Meal meal) {
    setState(() {
      _isFavorite(meal)
          ? _favoriteMeals.remove(meal)
          : _favoriteMeals.add(meal);
    });
  }

  bool _isFavorite(Meal meal) {
    return _favoriteMeals.contains(meal);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      debugShowCheckedModeBanner: false,
      theme: mainTheme(),
      routes: {
        AppRoutes.home: (ctx) => TabsScreen(favoriteMeals: _favoriteMeals),
        AppRoutes.categoriesMeals: (ctx) =>
            CategoriesMealsScreen(meals: _availableMeals),
        AppRoutes.meailDetail: (ctx) => MealDetailScreen(
          isFavorite: _isFavorite,
          onToggleFavorite: _toggleFavorite,
        ),
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
