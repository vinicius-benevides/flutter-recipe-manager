import 'package:flutter/material.dart';
import 'package:recipe_manager/components/main_drawer.dart';
import 'package:recipe_manager/models/meal.dart';
import 'package:recipe_manager/screens/categories_screen.dart';
import 'package:recipe_manager/screens/favorite_screen.dart';

class WidgetConfig {
  final Widget widget;
  final String title;
  final String label;
  final IconData selectedIcon;
  final IconData unselectedIcon;

  const WidgetConfig(
    this.widget, {
    this.title = '',
    this.label = '',
    required this.selectedIcon,
    required this.unselectedIcon,
  });
}

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key, required this.favoriteMeals});

  final List<Meal> favoriteMeals;

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0;

  late List<WidgetConfig> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      WidgetConfig(
        CategoriesScreen(),
        title: 'Lista de Categorias',
        label: 'Categorias',
        selectedIcon: Icons.category,
        unselectedIcon: Icons.category_outlined,
      ),
      WidgetConfig(
        FavoriteScreen(favoriteMeals: widget.favoriteMeals),
        title: 'Meus Favoritos',
        label: 'Favoritos',
        selectedIcon: Icons.star,
        unselectedIcon: Icons.star_border_outlined,
      ),
    ];
  }

  void _selectScreen(int index) {
    if (index < 0 || index >= _screens.length) return;

    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_screens[_selectedScreenIndex].title)),
      body: _screens[_selectedScreenIndex].widget,
      drawer: MainDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => _selectScreen(index),
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        showUnselectedLabels: true,
        currentIndex: _selectedScreenIndex,
        type: BottomNavigationBarType.shifting,
        items: _screens
            .asMap()
            .entries
            .map(
              (entry) => BottomNavigationBarItem(
                icon: Icon(
                  entry.key == _selectedScreenIndex
                      ? entry.value.selectedIcon
                      : entry.value.unselectedIcon,
                ),
                label: entry.value.label,
                backgroundColor: Theme.of(context).colorScheme.primary,
              ),
            )
            .toList(),
      ),
    );
  }
}
