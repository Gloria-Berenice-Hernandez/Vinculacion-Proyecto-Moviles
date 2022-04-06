import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:vinculacion/widget/normativa.dart';
import '../page/pagina_inicio.dart';
import '../widget/convocatorias.dart';
import '../widget/normativa.dart';

String informacion =
    '{"titulo1":"Estudiantes del Instituto Tecnológico de Ensenada del TecNM.","titulo2":"Conoce e incorporate al Modelo de Educación Dual es importante en tu formación académica-laboral."}';

Map<String, dynamic> mapa = jsonDecode(informacion);

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
            margin: const EdgeInsets.all(15),
            child: Text(
              /*'Estudiantes del Instituto Tecnológico de Ensenada del TecNM.'*/ mapa[
                  'titulo1'],
              style: TextStyle(
                  color: Colors.indigo[900],
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(70, 5, 70, 10),
            child: const Text(
              'Conoce e incorporate al Modelo de Educación Dual es importante '
              'en tu formación académica-laboral.',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontFamily: 'Times New Roman'),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.indigo[900],
            margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: const Text(
              'Convocatorias Disponibles',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Convocatoria(
                  empresa: 'BERRYMEX, S. DE R.L. DE C.V.',
                  carreras: const ["Ingeniería en Industrial"],
                  pdf: 'assets/pdfs/Practicante-ITE.pdf',
                ),
                Convocatoria(
                  empresa: 'BERRYMEX, S. DE R.L. DE C.V.',
                  carreras: const [
                    "Ingeniería en Industrial",
                    "I.G.E.",
                    "Administración"
                  ],
                  pdf: 'assets/pdfs/Solicitud-de-Estudiante-DUAL-RH.pdf',
                ),
                Convocatoria(
                  empresa: 'BERRYMEX, S. DE R.L. DE C.V.',
                  carreras: const ["Ingeniería en Industrial", "I.G.E."],
                  pdf: 'assets/pdfs/Solicitud-Berrymex.pdf',
                ),
                Convocatoria(
                  empresa: 'MAS PRINT',
                  carreras: const [
                    "Ingeniería en Industrial",
                    "Administración"
                  ],
                  pdf: 'assets/pdfs/SolicitudMasPrint.pdf',
                ),
                Convocatoria(
                  empresa: 'MAS PRINT',
                  carreras: const ["I.G.E.", "Administración"],
                  pdf: 'assets/pdfs/Solicitud-MAS-PRINT-Facturacion.pdf',
                ),
              ],
            ),
          ),
          const Normativa(),
        ],
      ),
    );
  }
}
