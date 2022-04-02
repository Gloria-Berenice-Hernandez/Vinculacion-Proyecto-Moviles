import 'package:flutter/material.dart';

import 'page/pagina_inicio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instituto Tecnologico de Ensenada',
      home: PaginaInicio(),
    );
  }
}
