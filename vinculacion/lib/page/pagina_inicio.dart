import 'package:flutter/material.dart';

import '../widget/barra_navegacion.dart';

class PaginaInicio extends StatefulWidget {
  const PaginaInicio({Key? key}) : super(key: key);

  @override
  State<PaginaInicio> createState() => _PaginaInicioState();
}

class _PaginaInicioState extends State<PaginaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: BarraNavegacion(),
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        centerTitle: true,
        title: const Text('Tecnológico Nacional de México', style: TextStyle(fontSize: 16),),
      ),

      body: Column(
        children: [

          Container(
            margin: EdgeInsets.all(15),
            child: Text(
              'Instituto Tecnológico de Ensenada',
              style: TextStyle(
                color: Colors.indigo[900],
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            height: 250,
            child: Image(
              image: AssetImage('assets/images/logo-ensenada.png'),
              fit: BoxFit.contain,
            ),
          ),

          Text(
            'Propuesta para Página de Vinculación',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),





        ],
      ),
    );
  }
}
