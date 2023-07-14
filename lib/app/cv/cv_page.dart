import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

class CVPage extends StatefulWidget {
  const CVPage({Key? key}) : super(key: key);

  @override
  State<CVPage> createState() => _CVPageState();
}

class _CVPageState extends State<CVPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CV'),
      ),
      body: const PDF().cachedFromUrl(
          'https://firebasestorage.googleapis.com/v0/b/portfolio-nghia.appspot.com/o/project%2FHoang-Tho-Minh-Nghia-Flutter.pdf?alt=media&token=b282cc9a-2fa7-4843-bc7e-6645ba5383f7'),
    );
  }
}
