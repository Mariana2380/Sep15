import 'package:flutter/material.dart';

class ResultadoScreen extends StatelessWidget {
  final String titulo;

  const ResultadoScreen({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(titulo)),
      body: Center(
        child: Text(
          titulo,
          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
