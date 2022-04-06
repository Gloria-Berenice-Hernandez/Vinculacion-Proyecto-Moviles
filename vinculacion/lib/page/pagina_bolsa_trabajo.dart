import 'package:flutter/material.dart';

import '../page/pagina_inicio.dart';
import '../widget/imagen_bolsa_de_trabajo.dart';

class BolsaDeTrabajo extends StatelessWidget {
  const BolsaDeTrabajo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          title: const Text(
            'Bolsa de Trabajo',
            style: TextStyle(fontFamily: 'Alfa_Slab_One'),
          ),
          backgroundColor: Colors.indigo[900],
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const PaginaInicio(),
                ));
              },
              icon: const Icon(Icons.home),
            ),
          ],
        ),
        body: ListView(
          children: [
            BolsaDeTrabajoImagen('assets/images/VACANTES.1.jpg'),
            BolsaDeTrabajoImagen('assets/images/VACANTES.2022.1.jpg'),
            BolsaDeTrabajoImagen('assets/images/VACANTES-2022.jpg'),
          ],
        ));
  }
}
