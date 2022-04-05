import 'package:flutter/material.dart';


// ignore: must_be_immutable
class Convocatoria extends StatelessWidget {
  String empresa;
  List<String> carreras;
  String pdf;

  // ignore: use_key_in_widget_constructors
  Convocatoria({required this.empresa, required this.carreras, required this.pdf});

  String obtenerCarreras(){
    String resultado = "";
    for(var i=0; i<carreras.length; i++){
      resultado += "• ${carreras[i]}\n";
    }
    return resultado;
  }

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () => print('click'),

      child: Container(

        margin: EdgeInsets.fromLTRB(10, 25, 10, 10),

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
                margin: EdgeInsets.fromLTRB(15, 15, 15, 25),
                width: double.infinity,
                child: Text(empresa,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              Container(
                margin: EdgeInsets.fromLTRB(10,0,0,0),
                width: double.infinity,
                child: Text(obtenerCarreras(), style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),),
              ),

              Container(
                margin: EdgeInsets.fromLTRB(0,0,35,0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle
                ),
                child: Container(margin: EdgeInsets.all(3),child: Text('+', style: TextStyle(fontSize: 38, color: Colors.indigo[900]),)),
              ),

            ],
          ),
        ),
      ),
    );


  }


}
