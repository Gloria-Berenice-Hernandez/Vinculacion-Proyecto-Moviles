import 'package:flutter/material.dart';

import '../page/pagina_inicio.dart';

class BolsaDeTrabajo extends StatelessWidget {
  const BolsaDeTrabajo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Bolsa de Trabajo'),
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
              color: Colors.indigo[900],
              margin: const EdgeInsets.all(15),
              child: Container(
                  margin: const EdgeInsets.all(10),
                  child: const Image(
                    image: AssetImage('assets/images/VACANTES.1.jpg'),
                  )),
            ),
            Container(
              color: Colors.indigo[900],
              margin: const EdgeInsets.all(15),
              child: Container(
                  margin: const EdgeInsets.all(10),
                  child: const Image(
                    image: AssetImage('assets/images/VACANTES.2022.1.jpg'),
                  )),
            ),
            Container(
              color: Colors.indigo[900],
              margin: const EdgeInsets.all(15),
              child: Container(
                  margin: const EdgeInsets.all(10),
                  child: const Image(
                    image: AssetImage('assets/images/VACANTES-2022.jpg'),
                  )),
            ),
          ],
        ));
  }
}
