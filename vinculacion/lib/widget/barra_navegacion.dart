import 'package:flutter/material.dart';
import '../page/pagina_modelo_dual.dart';
import '../page/pagina_inicio.dart';
import '../page/pagina_bolsa_trabajo.dart';

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
          builder: (context) => ModeloEducacionDual(),
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
