import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:vinculacion/widget/normativa.dart';
import '../page/pagina_inicio.dart';
import '../widget/convocatorias.dart';
import '../widget/normativa.dart';

class ModeloEducacionDual extends StatefulWidget {
  ModeloEducacionDual({Key? key}) : super(key: key);

  @override
  State<ModeloEducacionDual> createState() => _ModeloEducacionDualState();
}

class _ModeloEducacionDualState extends State<ModeloEducacionDual> {
  List convocatorias = [];

  void initState(){
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) => leerJson(context));
  }

  Future<void> leerJson(BuildContext context) async{
    final String datosLeidos =
        await rootBundle.loadString('data/json_info.json');
    final datosDecodificados = await json.decode(datosLeidos);
    setState(() {
      convocatorias = datosDecodificados["convocatorias"];
      print(convocatorias);
    });
  }

  @override  Widget build(BuildContext context) {
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
              'Estudiantes del Instituto Tecnológico de Ensenada del TecNM.',
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

          Convocatoria(convocatorias),

          const Normativa(),
        ],
      ),
    );
  }
}
