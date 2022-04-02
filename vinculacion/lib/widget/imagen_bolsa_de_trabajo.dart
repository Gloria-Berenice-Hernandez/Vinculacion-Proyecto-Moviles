import 'package:flutter/material.dart';

class BolsaDeTrabajoImagen extends StatelessWidget {
  String imagen;
  BolsaDeTrabajoImagen(this.imagen,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo[900],
      margin: EdgeInsets.all(15),
      child: Container(
          margin: EdgeInsets.all(10),
          child: Image( image: AssetImage(imagen),)
      ),
    );
  }
}
