import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'ArtikelView.dart';
import 'package:html/parser.dart' as html;

class ArtikelPage extends StatelessWidget {
  dynamic argumentData = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Article Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _parseHtmlString(argumentData[0]['tittle']),
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  _parseHtmlString(argumentData[1]['isi'])
                      .replaceAll(RegExp('\n\n\n\n'), '\n\n'),
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _parseHtmlString(String htmlString) {
    var text = html.parse(htmlString).body!.text;
    return text;
  }
}
