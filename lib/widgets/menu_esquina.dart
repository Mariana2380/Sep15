import 'package:flutter/material.dart';

class MenuEsquina extends StatelessWidget {
  final int paginaSeleccionada;
  final Function(int) cambiarPagina;

  const MenuEsquina({
    super.key,
    required this.paginaSeleccionada,
    required this.cambiarPagina,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            child: Center(
              child: Text(
                'MENÚ',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Inicio'),
            selected: paginaSeleccionada == 0,
            onTap: () {
              cambiarPagina(0);
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.school),
            title: const Text('Estudiantes'),
            selected: paginaSeleccionada == 1,
            onTap: () {
              cambiarPagina(1);
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profesores'),
            selected: paginaSeleccionada == 2,
            onTap: () {
              cambiarPagina(2);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
