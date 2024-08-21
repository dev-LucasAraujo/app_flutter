import 'package:flutter/material.dart';

class DetalhesScreen extends StatelessWidget {
  const DetalhesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String imagemNome = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes'),
      ),
      body: Center(
        child: Text('Detalhes da $imagemNome'),
      ),
    );
  }
}
