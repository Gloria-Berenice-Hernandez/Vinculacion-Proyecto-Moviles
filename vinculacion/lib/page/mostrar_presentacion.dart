import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'pagina_inicio.dart';

class MostrarPresentacion extends StatelessWidget {
  String pdf;
  String titulo;
  MostrarPresentacion({Key? key, required this.pdf, required this.titulo}) : super(key: key);

  PdfViewerController pdfController = PdfViewerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        title: Text(
          titulo,
          style: TextStyle(fontFamily: 'Alfa_Slab_One'),
        ),
        backgroundColor: Colors.indigo[900],
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const PaginaInicio(),
              ));
            },
            icon: const Icon(Icons.home),
          ),
        ],
      ),

      body: SfPdfViewer.asset(
        pdf,
        controller: pdfController,
      ),

    );
  }
}

