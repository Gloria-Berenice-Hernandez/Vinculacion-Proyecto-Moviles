import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path/path.dart';

class PdfViewerPage extends StatefulWidget {
  final File file;
  const PdfViewerPage({Key? key, required this.file}) : super(key: key);

  @override
  _PdfViewerPageState createState() => _PdfViewerPageState();
}

class _PdfViewerPageState extends State<PdfViewerPage> {
  late PDFViewController controller;
  int paginas = 0;
  int indicePagina = 0;

  @override
  Widget build(BuildContext context) {
    final name = basename(widget.file.path);
    final text = '${indicePagina + 1} of $paginas';
    return Scaffold(
      appBar: AppBar(
          title: Text(name),
          centerTitle: true,
          backgroundColor: Colors.indigo[900],
          actions: paginas >= 2
              ? [
                  Center(
                    child: Text(text),
                  ),
                  IconButton(
                    onPressed: () {
                      final pagina =
                          indicePagina == 0 ? paginas : indicePagina + 1;
                      controller.setPage(pagina);
                    },
                    icon: const Icon(Icons.chevron_left, size: 32),
                  ),
                  IconButton(
                      icon: const Icon(Icons.chevron_right, size: 32),
                      onPressed: () {
                        final page =
                            indicePagina == paginas - 1 ? 0 : indicePagina + 1;
                        controller.setPage(page);
                      }),
                ]
              : null),
      body: PDFView(
        filePath: widget.file.path,
        onRender: (pages) => setState(() {
          paginas = pages as int;
        }),
        onViewCreated: (controller) => this.controller = controller,
        onPageChanged: (indexPage, _) =>
            setState(() => indicePagina = indexPage as int),
      ),
    );
  }
}
