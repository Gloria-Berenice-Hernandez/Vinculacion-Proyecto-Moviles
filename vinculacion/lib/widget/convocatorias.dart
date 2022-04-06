import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Convocatoria extends StatelessWidget {
  List convocatorias;

  // ignore: use_key_in_widget_constructors
  Convocatoria(this.convocatorias);

  String obtenerCarreras(List carreras) {
    String resultado = "";
    for (var i = 0; i < carreras.length; i++) {
      resultado += "• ${carreras[i]}\n";
    }
    return resultado;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: convocatorias.map((convoc) {
          return InkWell(
            onTap: () {
              print(
                  "Cargar PDF en: ${convocatorias[convocatorias.indexOf(convoc)]["pdf"]}");
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(10, 25, 10, 10),
              color: Colors.transparent,
              width: 220,
              height: 220,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.indigo[900],
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(15, 15, 15, 25),
                      width: double.infinity,
                      child: Text(
                        convocatorias[convocatorias.indexOf(convoc)]["empresa"],
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      width: double.infinity,
                      child: Text(
                        obtenerCarreras(
                            convocatorias[convocatorias.indexOf(convoc)]
                                ["carreras"]),
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 35, 0),
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Container(
                          margin: const EdgeInsets.all(3),
                          child: Text(
                            '+',
                            style: TextStyle(
                                fontSize: 38, color: Colors.indigo[900]),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
