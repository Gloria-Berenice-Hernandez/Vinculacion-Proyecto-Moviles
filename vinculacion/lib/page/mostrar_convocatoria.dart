import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'pagina_inicio.dart';

class MostrarConvocatoria extends StatelessWidget {
  String empresa;
  String pdf;
  MostrarConvocatoria({Key? key, required this.empresa, required this.pdf}) : super(key: key);

  PdfViewerController pdfController = PdfViewerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          title: Text(
            empresa,
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
        initialZoomLevel: 1.58,
        initialScrollOffset: Offset(40,30),
        controller: pdfController,
      ),

    );
  }
}

