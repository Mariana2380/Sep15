import 'package:flutter/material.dart';

class MenuPopup extends StatelessWidget {
  final Function(String) seleccionar;

  const MenuPopup({super.key, required this.seleccionar});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: seleccionar,
      itemBuilder: (context) => const [
        PopupMenuItem(value: 'Editar', child: Text('Editar')),
        PopupMenuItem(value: 'Eliminar', child: Text('Eliminar')),
        PopupMenuItem(value: 'Compartir', child: Text('Compartir')),
        PopupMenuItem(value: 'Configuración', child: Text('Configuración')),
      ],
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.purple,
        ),
        child: const Text(
          'CLICK',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
