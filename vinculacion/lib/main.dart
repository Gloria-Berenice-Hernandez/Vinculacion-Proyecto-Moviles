import 'package:flutter/material.dart';

import 'widget/barra_navegacion.dart';
import 'page/pagina_inicio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instituto Tecnologico de Ensenada',
      home: PaginaInicio(),
    );
  }
}
