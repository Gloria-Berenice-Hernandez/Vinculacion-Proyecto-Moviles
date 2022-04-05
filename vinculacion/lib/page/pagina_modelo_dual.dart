import 'package:flutter/material.dart';
import 'package:vinculacion/widget/normativa.dart';

import '../page/pagina_inicio.dart';
import '../widget/convocatorias.dart';
import '../widget/normativa.dart';

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
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: const Text(
              'Estudiantes del Instituto Tecnológico de Ensenada del TecNM.\n\n'
              'Conoce e incorporate al Modelo de Educación Dual es importante '
              'en tu formación académica-laboral.\n\nTe presentamos Lineamientos, '
              'procedimiento, formatos y lo que necesitas conocer para inicia, dar '
              'seguimiento y concluir tu Modelo de Educación Dual.\n\nSi estas en '
              'tiempo para iniciarlo, empieza ya, no lo dejes para el último momento.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.indigo[900],
            margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: const Text(
              'Convocatorias Abiertas',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),



          Convocatorias(
              imagen: 'assets/images/berrymexlogocompleto.png',
              pdf: 'assets/pdfs/Practicante-ITE.pdf'),



          const Normativa(),
        ],
      ),
    );
  }

}
