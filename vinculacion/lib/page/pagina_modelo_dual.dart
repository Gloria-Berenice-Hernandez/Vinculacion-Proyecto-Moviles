import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:vinculacion/widget/normativa.dart';
import '../page/pagina_inicio.dart';
import '../widget/convocatorias.dart';
import '../widget/normativa.dart';

class ModeloEducacionDual extends StatefulWidget {
  const ModeloEducacionDual({Key? key}) : super(key: key);

  @override
  State<ModeloEducacionDual> createState() => _ModeloEducacionDualState();
}

class _ModeloEducacionDualState extends State<ModeloEducacionDual> {
  List convocatorias = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) => leerJson(context));
  }

  Future<void> leerJson(BuildContext context) async {
    final String datosLeidos =
        await rootBundle.loadString('data/json_info.json');
    final datosDecodificados = await json.decode(datosLeidos);
    setState(() {
      convocatorias = datosDecodificados["convocatorias"];
      //print(convocatorias);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        title: const Text('Modelo de Educación DUAL',
            style: TextStyle(fontFamily: 'Alfa_Slab_One', fontSize: 18)),
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
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 5, bottom: 1),
            child: Text(
              'Dual',
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
              'Estudiante del',
              style: TextStyle(
                  color: Colors.indigo[900],
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15, top: 10),
            child: const Text(
              'Tecnologico de Ens.',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(15, 10, 5, 5),
            child: const Text(
              'Conoce e incorporate al Modelo de Educación Dual es importante '
              'en tu formación académica-laboral.',
              style: TextStyle(
                  fontSize: 16, color: Colors.black, fontFamily: 'Andika'),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            color: Colors.transparent,
            margin: const EdgeInsets.fromLTRB(15, 15, 0, 0),
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: const Text(
              'Convocatorias Disponibles',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 157, 157, 167),
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
