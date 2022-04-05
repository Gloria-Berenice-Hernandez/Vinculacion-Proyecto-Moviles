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
            margin: EdgeInsets.all(15),
            child: Text('Estudiantes del Instituto Tecnológico de Ensenada del TecNM.',
              style: TextStyle(color: Colors.indigo[900],fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(70, 5, 70, 10),
            child: Text('Conoce e incorporate al Modelo de Educación Dual es importante '
                'en tu formación académica-laboral.',
              style: TextStyle(fontSize: 16, color: Colors.black, fontFamily: 'Times New Roman'),
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
                    carreras: ["Ingeniería en Industrial"],
                    pdf: 'assets/pdfs/Practicante-ITE.pdf',
                ),

                Convocatoria(
                  empresa: 'BERRYMEX, S. DE R.L. DE C.V.',
                  carreras: ["Ingeniería en Industrial","I.G.E.","Administración"],
                  pdf: 'assets/pdfs/Solicitud-de-Estudiante-DUAL-RH.pdf',
                ),

                Convocatoria(
                  empresa: 'BERRYMEX, S. DE R.L. DE C.V.',
                  carreras: ["Ingeniería en Industrial","I.G.E."],
                  pdf: 'assets/pdfs/Solicitud-Berrymex.pdf',
                ),

                Convocatoria(
                  empresa: 'MAS PRINT',
                  carreras: ["Ingeniería en Industrial","Administración"],
                  pdf: 'assets/pdfs/SolicitudMasPrint.pdf',
                ),

                Convocatoria(
                  empresa: 'MAS PRINT',
                  carreras: ["I.G.E.","Administración"],
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
