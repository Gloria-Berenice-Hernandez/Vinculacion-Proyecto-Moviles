import 'package:flutter/material.dart';
import '../page/pagina_modelo_dual.dart';
import '../page/pagina_inicio.dart';
import '../page/pagina_bolsa_trabajo.dart';

// ignore: use_key_in_widget_constructors
class BarraNavegacion extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 5);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: const Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          padding: padding,
          children: [
            const SizedBox(
              height: 75,
            ),
            ItemMenu(
              texto: 'Inicio',
              itemPresionado: () => itemSeleccionado(context, 0),
            ),
            const ExpansionTile(
              title: Text('Nosotros', style: TextStyle(color: Colors.white)),
              children: [],
            ),
            const ExpansionTile(
              title: Text('Oferta Educativa',
                  style: TextStyle(color: Colors.white)),
              children: [],
            ),
            const ExpansionTile(
              title: Text('Estudiantes', style: TextStyle(color: Colors.white)),
              children: [],
            ),
            const ExpansionTile(
              title: Text('Aspirantes', style: TextStyle(color: Colors.white)),
              children: [],
            ),
            const ExpansionTile(
              title: Text('Docente', style: TextStyle(color: Colors.white)),
              children: [],
            ),
            ItemMenu(
              texto: 'Convocatorias',
              itemPresionado: () => itemSeleccionado(context, 0),
            ),
            ExpansionTile(
              title: const Text('Vinculación',
                  style: TextStyle(color: Colors.white)),
              children: [
                ItemMenu(
                  texto: '    Modelo de Educación DUAL',
                  itemPresionado: () => itemSeleccionado(context, 7),
                ),
                ItemMenu(
                  texto: '    Bolsa de Trabajo',
                  itemPresionado: () => itemSeleccionado(context, 8),
                ),
              ],
            ),
            const ExpansionTile(
              title: Text('Sistemas de Gestión',
                  style: TextStyle(color: Colors.white)),
              children: [],
            ),
            const ExpansionTile(
              title: Text('Sistemas', style: TextStyle(color: Colors.white)),
              children: [],
            ),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget ItemMenu({
    required String texto,
    VoidCallback? itemPresionado,
  }) {
    const color = Colors.white;

    return ListTile(
      title: Text(
        texto,
        style: const TextStyle(color: color),
      ),
      onTap: itemPresionado,
    );
  }

  void itemSeleccionado(BuildContext context, int indice) {
    switch (indice) {
      case 7:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const ModeloEducacionDual(),
        ));
        break;

      case 8:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const BolsaDeTrabajo(),
        ));
        break;

      default:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const PaginaInicio(),
        ));
        break;
    }
  }
}
