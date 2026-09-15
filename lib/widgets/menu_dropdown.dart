import 'package:flutter/material.dart';

class MenuDropdown extends StatelessWidget {
  final Function(String) seleccionar;

  const MenuDropdown({super.key, required this.seleccionar});

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      label: const Text('Seleccionar opción'),
      leadingIcon: const Icon(Icons.list),
      dropdownMenuEntries: const [
        DropdownMenuEntry(value: 'Aprendiz', label: 'Aprendiz'),
        DropdownMenuEntry(value: 'Estudiante', label: 'Estudiante'),
        DropdownMenuEntry(
          value: 'Funcionario',
          label: 'Funcionario administrativo',
        ),
      ],
      onSelected: (valor) {
        if (valor != null) {
          seleccionar(valor);
        }
      },
    );
  }
}
