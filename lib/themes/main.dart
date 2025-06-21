import 'package:flutter/material.dart';

ThemeData mainTheme() => ThemeData(
  fontFamily: 'Raleway',
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.pink,
    foregroundColor: Colors.white,
  ),
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.yellow,
    primary: Colors.pink,
    secondary: Colors.amber,
  ),
  textTheme: ThemeData.light().textTheme.copyWith(
    titleLarge: TextStyle(fontFamily: 'RobotoCondensed'),
    titleMedium: TextStyle(fontFamily: 'RobotoCondensed'),
    titleSmall: TextStyle(fontFamily: 'RobotoCondensed'),
  ),
);
