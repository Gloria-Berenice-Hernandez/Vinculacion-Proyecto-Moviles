import 'package:flutter/material.dart';

// ignore: camel_case_types
class sitiosdeinteres extends StatefulWidget {
  const sitiosdeinteres({Key? key}) : super(key: key);

  @override
  State<sitiosdeinteres> createState() => _sitiosdeinteresState();
}

// ignore: camel_case_types
class _sitiosdeinteresState extends State<sitiosdeinteres> {
  @override
  Widget build(BuildContext context) {
    // var screenSize = MediaQuery.maybeOf(context)!.size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Image.asset(
            'assets/images/CONACYT.png',
            width: 80,
          ),
          Image.asset(
            'assets/images/CONRICYT.png',
            width: 80,
          ),
          Image.asset(
            'assets/images/INAI.png',
            width: 80,
          ),
          Image.asset(
            'assets/images/PNT.png',
            width: 80,
          ),
          Image.asset(
            'assets/images/contraloria.png',
            width: 80,
          )
        ],
      ),
    );
  }
}
