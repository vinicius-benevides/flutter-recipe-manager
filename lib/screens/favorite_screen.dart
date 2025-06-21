import 'package:flutter/material.dart';
import 'package:recipe_manager/components/meal_item.dart';
import 'package:recipe_manager/models/meal.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key, required this.favoriteMeals});

  final List<Meal> favoriteMeals;

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return const Center(
        child: Text('Nenhuma refeição foi maraca como favorita'),
      );
    }
    return ListView.builder(
      itemCount: favoriteMeals.length,
      itemBuilder: (ctx, index) {
        return MealItem(meal: favoriteMeals[index]);
      },
    );
  }
}
