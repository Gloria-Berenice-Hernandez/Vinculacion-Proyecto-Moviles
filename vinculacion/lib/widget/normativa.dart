import 'package:flutter/material.dart';

class Normativa extends StatelessWidget {
  const Normativa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 0),
      color: Colors.grey[200],
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.grey[200],
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: const Text(
              'Normatividad',
              style: TextStyle(
                fontSize: 26,
                fontFamily: 'Anton',
                color: Color.fromARGB(255, 26, 35, 126),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            color: Colors.grey[200],
            margin: const EdgeInsets.fromLTRB(35, 0, 35, 50),
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
      ),
    );
  }
}
