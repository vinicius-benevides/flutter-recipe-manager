import 'package:flutter/material.dart';
import 'package:recipe_manager/components/main_drawer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Configurações')),
      drawer: MainDrawer(),
      body: Center(child: Text('Configurações')),
    );
  }
}
