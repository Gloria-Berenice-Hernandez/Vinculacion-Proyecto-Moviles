import 'package:flutter/material.dart';

class Normativa extends StatelessWidget {
  const Normativa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.all(12),
            child: Text(
              'Normatividad',
              style: TextStyle(
                  fontSize: 26,
                  color: Colors.indigo[900],
                  fontWeight: FontWeight.bold),
            )),
        Container(
          margin: const EdgeInsets.all(10),
          child: InkWell(
            onTap: () => {print('ABRIR PDF')},
            child: const Text(
              '• Modelo de Educación Dual para nivel licenciatura del Tecnológico Nacional de México (MEDTecNM)',
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.indigo,
              ),
            ),
          ),
        ),
      ],
    );
  }


}
