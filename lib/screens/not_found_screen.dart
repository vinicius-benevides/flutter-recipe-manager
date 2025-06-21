import 'package:flutter/material.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Erro')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.error_outline,
              size: 80,
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(height: 20),
            Text('Tela não encontrada', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
