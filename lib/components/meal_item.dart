import 'package:flutter/material.dart';
import 'package:recipe_manager/models/meal.dart';
import 'package:recipe_manager/utils/consts/app_routes.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.meal});

  final Meal meal;

  void _selectMeal(BuildContext context) {
    Navigator.of(context).pushNamed(AppRoutes.meailDetail, arguments: meal);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    meal.imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadiusGeometry.circular(15),
                    ),
                    child: Text(
                      meal.title,
                      softWrap: true,
                      textAlign: TextAlign.end,
                      overflow: TextOverflow.fade,
                      style: TextStyle(fontSize: 26, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsGeometry.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    spacing: 6,
                    children: [
                      Icon(Icons.schedule),
                      Text('${meal.duration} min'),
                    ],
                  ),
                  Row(
                    spacing: 6,
                    children: [Icon(Icons.work), Text(meal.complexityText)],
                  ),
                  Row(
                    spacing: 6,
                    children: [Icon(Icons.attach_money), Text(meal.costText)],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
