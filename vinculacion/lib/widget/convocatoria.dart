import 'package:flutter/material.dart';


// ignore: must_be_immutable
class Convocatoria extends StatelessWidget {
  String imagen;
  String texto;
  String pdf;

  // ignore: use_key_in_widget_constructors
  Convocatoria({required this.imagen, required this.texto, required this.pdf});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border:
              // ignore: unnecessary_const
              const Border(bottom: BorderSide(color: Colors.indigo, width: 8))),
      child: Row(
        children: [
          InkWell(
            onTap: () => {print("Abrir PDF")},
            child: Container(
              height: 155,
              width: 155,
              child: Image(
                image: AssetImage(imagen),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                // ignore: unnecessary_const
                border: const Border(
                    left: BorderSide(color: Colors.indigo, width: 5))),
            padding: const EdgeInsets.all(5),
            width: 250,
            child: Text(
              texto,
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }


}
