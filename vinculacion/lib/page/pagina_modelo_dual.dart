import 'package:flutter/material.dart';

import '../page/pagina_inicio.dart';

class ModeloEducacionDual extends StatelessWidget {
  ModeloEducacionDual({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
   return  Scaffold(
     appBar: AppBar(
       title: Text('Modelo de Educación DUAL'),
       backgroundColor: Colors.indigo[900],
       actions: [
         IconButton(
           onPressed: () {
             Navigator.of(context).push(MaterialPageRoute(
               builder: (context) => PaginaInicio(),
             ));
           },
           icon: Icon(Icons.home),
         ),
       ],
     ),

     body: Text('Modelo Dual'),

   );


  }
}
