import 'package:flutter/material.dart';

import '../page/pagina_inicio.dart';

class BolsaDeTrabajo extends StatelessWidget {
  const BolsaDeTrabajo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bolsa de Trabajo'),
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
      body: const Text('Bolsa de Trabajo'),
    );
  }
}
