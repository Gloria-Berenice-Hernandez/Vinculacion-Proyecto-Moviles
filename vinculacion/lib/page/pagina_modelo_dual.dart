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
      body: ListView(children: const [
        ListTile(
          title: Text(
            "Modelo de Educacion Dual",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            "Estudiantes del Instituto Tecnológico de Ensenada del TecNM\nConoce e incorporate al Modelo de Educación Dual es importante en tu formación académica-laboral.\nTe presentamos Lineamientos, procedimiento, formatos y lo que necesitas conocer para inicia, dar seguimiento y concluir tu Modelo de Educación Dual.\nSi estas en tiempo para iniciarlo, empieza ya, no lo dejes para el último momento.",
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        )
      ]),
    );
  }
}
