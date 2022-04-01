import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Normativa extends StatelessWidget {
  const Normativa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.all(12),
            child: Text('Normatividad', style: TextStyle(fontSize: 22),)
        ),

        Container(
            margin: EdgeInsets.all(12),
            child:
            InkWell(
              onTap: () => launch('https://www.ensenada.tecnm.mx/wp-content/uploads/2021/08/MODELO-DUAL-2015-TecNM.pdf'),
              child: Text('• Modelo de Educación Dual para nivel licenciatura del Tecnológico Nacional de México (MEDTecNM)',
                style: TextStyle(color: Colors.indigo),),
            ),

        ),


      ],
    );
  }
}
