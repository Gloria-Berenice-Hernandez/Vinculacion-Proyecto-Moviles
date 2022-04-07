// ignore_for_file: constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url_innova = 'https://acortar.link/A0CRNT';
const String _url_codigo = 'https://acortar.link/2w3flP';

class ContainerDecoration extends StatelessWidget {
  const ContainerDecoration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(right: 15.0, bottom: 20.0, top: 20.0, left: 15),
      child: Container(
        decoration: _boxdecoration(),
        margin: const EdgeInsets.all(5),
        height: 230,
        width: 230,
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/bulb.png',
                  width: 80,
                ),
                const Text(
                  'Innova',
                  style: TextStyle(
                    fontFamily: 'Andika',
                    color: Colors.indigo,
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            _textInfo(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                CupertinoButton(
                  child: Icon(CupertinoIcons.cloud_download_fill,
                      size: 28, color: Colors.indigo),
                  onPressed: _launchURL,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _textInfo() {
  return Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          'Convocatoria',
          style: TextStyle(
              fontFamily: 'Andika',
              color: Colors.black45,
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
        Text(
          'Cumbre Nacional de Desarrollo Tecnológico, '
          'Investigación e Innovación',
          style: TextStyle(
            fontFamily: 'Andika',
            color: Colors.black45,
            fontSize: 12,
          ),
        ),
      ],
    ),
  );
}

class ContainerDecoration2 extends StatelessWidget {
  const ContainerDecoration2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(right: 15.0, bottom: 20.0, top: 20.0, left: 15),
      child: Container(
        decoration: _boxdecoration(),
        margin: const EdgeInsets.all(5),
        height: 230,
        width: 190,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/idea.png',
              width: 110,
            ),
            const Text(
              '¿Ya conoces\n' 'el código de conducta?',
              style: TextStyle(
                  fontFamily: 'Andika',
                  color: Colors.black45,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                CupertinoButton(
                    child: Icon(CupertinoIcons.cloud_download_fill,
                        size: 28, color: Colors.indigo),
                    onPressed: _launchURLCodigo),
              ],
            )
          ],
        ),
      ),
    );
  }
}

BoxDecoration _boxdecoration() {
  return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30.0),
      boxShadow: const [
        BoxShadow(color: Colors.black45, offset: Offset(4, 4), blurRadius: 10)
      ]);
}

void _launchURL() async {
  if (!await launch(_url_innova)) throw 'Could not launch $_url_innova';
}

void _launchURLCodigo() async {
  if (!await launch(_url_codigo)) throw 'Could not launch $_url_codigo';
}
