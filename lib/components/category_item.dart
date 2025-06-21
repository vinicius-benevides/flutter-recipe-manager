import 'package:flutter/material.dart';
import 'package:recipe_manager/models/category.dart';
import 'package:recipe_manager/utils/consts/app_routes.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});

  final Category category;

  void _selectCategory(BuildContext context) {
    Navigator.of(
      context,
    ).pushNamed(AppRoutes.categoriesMeals, arguments: category);
  }

  @override
  Widget build(BuildContext context) {
    final itemBorderRadius = BorderRadius.circular(15);

    return InkWell(
      onTap: () => _selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: itemBorderRadius,
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: itemBorderRadius,
          gradient: LinearGradient(
            colors: [category.color.withValues(alpha: 128), category.color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
