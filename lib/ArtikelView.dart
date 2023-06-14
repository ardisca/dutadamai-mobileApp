import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'ArtikelController.dart';
import 'ArtikelPage.dart';
import 'list_artikel.dart';
import 'package:html/parser.dart' as html;
import 'package:intl/intl.dart';

class ArtikelView extends StatelessWidget {
  final ArtikelController artikelController = Get.put(ArtikelController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Artikel'),
      ),
      body: Obx(
        () => artikelController.artikelList.isNotEmpty
            ? ListView.builder(
                itemCount: artikelController.artikelList.length + 1,
                itemBuilder: (context, index) {
                  if (index == artikelController.artikelList.length) {
                    // Render Load More button
                    return ElevatedButton(
                      onPressed: () {
                        artikelController.fetchNextPageArtikelList();
                      },
                      child: Text('Load More'),
                    );
                  } else {
                    ListArtikel artikel = artikelController.artikelList[index];
                    return Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (artikel.jetpackFeaturedMediaUrl != "")
                            FadeInImage(
                              placeholder: NetworkImage(
                                  "https://t4.ftcdn.net/jpg/04/73/25/49/360_F_473254957_bxG9yf4ly7OBO5I0O5KABlN930GwaMQz.jpg"), // Gambar pengganti
                              image: NetworkImage(
                                  artikel.jetpackFeaturedMediaUrl ??
                                      ''), // URL gambar utama
                              fit: BoxFit.cover,
                            )
                          else
                            Image(
                              image: NetworkImage(
                                  "https://t4.ftcdn.net/jpg/04/73/25/49/360_F_473254957_bxG9yf4ly7OBO5I0O5KABlN930GwaMQz.jpg"),
                            ),
                          Text(waktu(artikel.date)),
                          Text(
                            _parseHtmlString(artikel.title.rendered),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            _parseHtmlString(artikel.excerpt.rendered),
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Center(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(double.infinity,
                                    50), // Mengatur ukuran minimum
                                padding: EdgeInsets.all(16), // Mengatur padding
                              ),
                              onPressed: () {
                                //list_artikel artikels

                                // Tindakan yang dijalankan saat tombol ditekan
                                Get.to(() => ArtikelPage(), arguments: [
                                  {"tittle": artikel.title.rendered},
                                  {"isi": artikel.content.rendered}
                                ]);
                                // Get.to(ArtikelPage(),
                                //     arguments: "aaaaaaaaaaaaaaaaaaa");
                              },
                              child: Text('Read More'),
                            ),
                          )
                        ],
                      ),
                    );
                  }
                },
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }

  String _parseHtmlString(String htmlString) {
    var text = html.parse(htmlString).body!.text;
    return text;
  }

  String waktu(DateTime dateTime) {
    String formattedDate = DateFormat('yyyy-MM-dd').format(dateTime);

    return formattedDate;
  }
}

class Data {
  final String data1;
  final String data2;

  Data({required this.data1, required this.data2});
}
