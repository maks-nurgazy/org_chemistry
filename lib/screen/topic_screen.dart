import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class TopicPage extends StatefulWidget {
  const TopicPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _TopicPageState createState() => _TopicPageState();
}

class _TopicPageState extends State<TopicPage> {
  late PdfViewerController _pdfViewerController;
  final GlobalKey<SfPdfViewerState> _pdfViewerStateKey = GlobalKey();

  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    _pdfViewerController.jumpToPage(370);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              onPressed: () {
                _pdfViewerController.jumpToPage(370);
              },
              icon: const Icon(
                Icons.bookmark,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () async {
                _pdfViewerController.zoomLevel = 1.25;
              },
              icon: const Icon(
                Icons.zoom_in,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: SfPdfViewer.asset(
          'assets/books/organic-chemistry.pdf',
          controller: _pdfViewerController,
        ),
      ),
    );
  }
}
