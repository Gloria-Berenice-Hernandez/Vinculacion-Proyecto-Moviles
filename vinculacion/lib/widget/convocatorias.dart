import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../page/mostrar_convocatoria.dart';

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
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MostrarConvocatoria(
                  empresa: convocatorias[convocatorias.indexOf(convoc)]["empresa"],
                  pdf: convocatorias[convocatorias.indexOf(convoc)]["pdf"],
                ),
              ));
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(15, 15, 10, 50),
              color: Colors.transparent,
              width: 230,
              height: 230,
              child: Container(
                decoration: _boxdecoration(),
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
                          color: Color.fromARGB(255, 26, 35, 126),
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
                          fontFamily: 'Imprima',
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 35, 5),
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: const Icon(
                          CupertinoIcons.doc_on_clipboard_fill,
                          color: Colors.blue,
                          size: 40,
                        )),
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

BoxDecoration _boxdecoration() {
  return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(35.0),
      boxShadow: const [
        BoxShadow(color: Colors.black45, offset: Offset(4, 4), blurRadius: 10)
      ]);
}
