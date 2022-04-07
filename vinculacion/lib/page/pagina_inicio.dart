import 'package:flutter/material.dart';

import '../widget/barra_navegacion.dart';
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
      drawer: Prueba(),
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.indigo[900],
        centerTitle: true,
        title: const Text(
          'Tecnológico Nacional de México',
          style: TextStyle(fontSize: 16, fontFamily: 'Alfa_Slab_One'),
        ),
      ),

      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            child: Text(
              'Instituto Tecnológico de Ensenada',
              style: TextStyle(
                fontFamily: 'Andika',
                color: Colors.indigo[900],
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 15),
            height: 250,
            child: const Image(
              image: AssetImage('assets/images/logo-ensenada.png'),
              fit: BoxFit.contain,
            ),
          ),
          const Text(
            'Propuesta para Página de Vinculación',
            style: TextStyle(
              fontFamily: 'Andika',
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
