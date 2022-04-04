import 'dart:io';

import 'package:flutter/material.dart';
import 'package:vinculacion/api/pdf_api.dart';
import 'package:vinculacion/page/pdf_viewer.dart';

class Normativa extends StatelessWidget {
  const Normativa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.all(12),
            child: Text(
              'Normatividad',
              style: TextStyle(
                  fontSize: 26,
                  color: Colors.indigo[900],
                  fontWeight: FontWeight.bold),
            )),
        Container(
          margin: const EdgeInsets.all(10),
          child: InkWell(
            onTap: () async {
              const path = 'assets/pdfs/presentacion.pdf';
              final file = await PdfApi.loadAsset(path);
              openPdf(context, file);
            },
            child: const Text(
              '• Modelo de Educación Dual para nivel licenciatura del Tecnológico Nacional de México (MEDTecNM)',
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.indigo,
              ),
            ),
          ),
        ),
      ],
    );
  }

  void openPdf(BuildContext context, File file) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => PdfViewerPage(file: file)));
  }
}
