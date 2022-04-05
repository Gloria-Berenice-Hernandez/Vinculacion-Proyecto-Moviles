import 'package:flutter/material.dart';


// ignore: must_be_immutable
class Convocatorias extends StatelessWidget {
  String imagen;
  String pdf;

  // ignore: use_key_in_widget_constructors
  Convocatorias({required this.imagen, required this.pdf});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border:
              // ignore: unnecessary_const
              const Border(bottom: BorderSide(color: Colors.indigo, width: 8))),
      child: Row(
        children: [

          // Logo con OnTap
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

        ],
      ),
    );
  }


}
