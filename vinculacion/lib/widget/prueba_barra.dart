import 'package:flutter/material.dart';

import '../page/pagina_bolsa_trabajo.dart';
import '../page/pagina_inicio.dart';
import '../page/pagina_modelo_dual.dart';

class Prueba extends StatelessWidget {
  const Prueba({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new Drawer(
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text("ITE"),
            accountEmail: Text(""),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/logo-ensenada.png'),
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Ink(
                color: const Color.fromARGB(255, 28, 54, 149),
                width: 200.0,
                height: 50.0,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const PaginaInicio(),
                    ));
                  },
                  child: const Center(
                      child: Text("Inicio",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Imprima',
                              fontWeight: FontWeight.w900,
                              fontSize: 20))),
                )),
          ),
          ExpansionTile(
            title: Ink(
                color: const Color.fromARGB(255, 28, 54, 149),
                width: 300,
                height: 50.0,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const PaginaInicio(),
                    ));
                  },
                  child: const Center(
                      child: Text("Vinculación",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Imprima',
                              fontWeight: FontWeight.w900,
                              fontSize: 20))),
                )),
            children: [
              Ink(
                  color: const Color.fromARGB(255, 28, 54, 149),
                  width: 270.0,
                  height: 50.0,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ModeloEducacionDual(),
                      ));
                    },
                    child: const Center(
                        child: Text("Modelo de Educación DUAL",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Imprima',
                                fontWeight: FontWeight.w400,
                                fontSize: 15))),
                  )),
              Ink(
                  color: const Color.fromARGB(255, 28, 54, 149),
                  width: 270.0,
                  height: 50.0,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const BolsaDeTrabajo(),
                      ));
                    },
                    child: const Center(
                        child: Text("Bolsa de Trabajo",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Imprima',
                                fontWeight: FontWeight.w400,
                                fontSize: 15))),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
