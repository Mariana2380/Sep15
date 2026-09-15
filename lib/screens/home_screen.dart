import 'package:flutter/material.dart';
import '../widgets/menu_esquina.dart';
import '../widgets/menu_dropdown.dart';
import '../widgets/menu_popup.dart';
import 'resultado_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int paginaSeleccionada = 0;

  final paginas = const [
    Center(child: Text('Inicio', style: TextStyle(fontSize: 28))),
    Center(child: Text('Estudiantes', style: TextStyle(fontSize: 28))),
    Center(child: Text('Profesores', style: TextStyle(fontSize: 28))),
  ];

  void cambiarPagina(int pagina) {
    setState(() {
      paginaSeleccionada = pagina;
    });
  }

  void abrirResultado(String texto) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ResultadoScreen(titulo: texto),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tres tipos de menú'),
      ),
      drawer: MenuEsquina(
        paginaSeleccionada: paginaSeleccionada,
        cambiarPagina: cambiarPagina,
      ),
      body: paginaSeleccionada == 0
          ? SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    'MENÚS',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),

                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '1. Menú de esquina (☰)',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Abre el menú lateral desde la esquina superior izquierda.',
                  ),
                  const SizedBox(height: 28),

                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '2. Dropdown Menu',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  MenuDropdown(seleccionar: abrirResultado),

                  const SizedBox(height: 35),

                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '3. Popup Menu',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  MenuPopup(seleccionar: abrirResultado),
                ],
              ),
            )
          : paginas[paginaSeleccionada],
    );
  }
}
