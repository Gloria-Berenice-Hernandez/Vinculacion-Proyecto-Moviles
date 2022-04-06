import 'package:flutter/material.dart';

class Normativa extends StatelessWidget {
  const Normativa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.indigo[900],
          margin: const EdgeInsets.fromLTRB(0, 35, 0, 15),
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 8),
          child: const Text(
            'Normatividad',
            style: TextStyle(
              fontSize: 26,
              fontFamily: 'Anton',
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(35, 0, 35, 0),
          child: InkWell(
            // ignore: avoid_print
            onTap: () => {print('ABRIR PDF')},
            child: const Text(
              '• Modelo de Educación Dual para nivel licenciatura del Tecnológico Nacional de México (MEDTecNM)',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Andika',
                color: Color.fromRGBO(40, 62, 185, 0.8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
