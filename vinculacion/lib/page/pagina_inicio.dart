import 'package:flutter/material.dart';
import 'package:vinculacion/widget/trabaja_scroll.dart';

import '../widget/prueba_barra.dart';

class PaginaInicio extends StatefulWidget {
  const PaginaInicio({Key? key}) : super(key: key);

  @override
  State<PaginaInicio> createState() => _PaginaInicioState();
}

class _PaginaInicioState extends State<PaginaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   drawer: BarraNavegacion(),
      drawer: const Prueba(),
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.indigo[900],
        centerTitle: true,
        title: const Text(
          'Tecnológico Nacional de México',
          style: TextStyle(fontSize: 16, fontFamily: 'Alfa_Slab_One'),
        ),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15.0, top: 10),
              child: Text(
                'Bienvenido',
                style: TextStyle(
                  fontFamily: 'Andika',
                  color: Color.fromARGB(255, 157, 157, 167),
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: Text(
                'Instituto Tecnológico',
                style: TextStyle(
                  color: Colors.indigo[900],
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: const Text(
                'de Ensenada',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //text

            const Padding(
              padding: EdgeInsets.only(left: 15.0, top: 10),
              child: Text(
                'Reciente',
                style: TextStyle(
                  fontFamily: 'Andika',
                  color: Color.fromARGB(255, 157, 157, 167),
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),

            ///reciente
            ///
            const TrabajaScroll(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      'Comunicacion',
                      style: TextStyle(
                        color: Colors.indigo[900],
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Image.asset(
              'assets/images/experiencia.jpeg',
              width: 500,
              height: 150,
            ),
            Image.asset(
              'assets/images/lectura.png',
              width: 500,
            ),

            Container(
              color: Colors.grey[200],
              margin: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        'Sitios de Interes',
                        style: TextStyle(
                          color: Colors.indigo[900],
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/CONACYT.png',
                            width: 80,
                          ),
                          Image.asset(
                            'assets/images/CONRICYT.png',
                            width: 80,
                          ),
                          Image.asset(
                            'assets/images/INAI.png',
                            width: 80,
                          ),
                          Image.asset(
                            'assets/images/PNT.png',
                            width: 80,
                          ),
                          Image.asset(
                            'assets/images/contraloria.png',
                            width: 80,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
