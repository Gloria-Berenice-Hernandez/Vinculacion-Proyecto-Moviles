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
    );
  }
}
