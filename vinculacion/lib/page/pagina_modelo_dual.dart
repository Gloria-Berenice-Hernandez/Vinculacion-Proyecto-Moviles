import 'package:flutter/material.dart';

import '../page/pagina_inicio.dart';

class ModeloEducacionDual extends StatelessWidget {
  const ModeloEducacionDual({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modelo de Educación DUAL'),
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
      body: const Text('Modelo Dual'),
    );
  }
}
