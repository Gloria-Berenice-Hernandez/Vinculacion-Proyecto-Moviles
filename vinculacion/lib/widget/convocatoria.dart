import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Convocatoria extends StatelessWidget {
  String imagen;
  String texto;

  Convocatoria(this.imagen, this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(
              color: Colors.indigo,
              width: 5
          ))
      ),

      child: Row(
        children: [

          Container(
            height: 155,
            width: 155,
            child: Image(
              image: AssetImage(imagen),
              fit: BoxFit.contain,
            ),
          ),

          Container(
              decoration: BoxDecoration(
                  border: Border(left: BorderSide(
                      color: Colors.indigo,
                      width: 5
                  ))
              ),
              padding: EdgeInsets.all(5),
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
