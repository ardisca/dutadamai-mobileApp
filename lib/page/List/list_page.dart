import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/Artikel/artikel_page.dart';
import '../../controler/ArtikelController.dart';
import '../../model/list_artikel.dart';
import 'package:get/get.dart';
import '../Home/widget/listArticel.dart';
import 'package:get/state_manager.dart';
import 'package:html/parser.dart' as html;
import 'package:intl/intl.dart';

class list_page extends StatelessWidget {
  list_page(
      {required this.categori, required this.idCategori, required this.search});

  String categori;
  String idCategori;
  String search;

  @override
  Widget build(BuildContext context) {
    final ArtikelController artikelController =
        Get.put(ArtikelController(idCategori, search, ""));

    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
                width: 375,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  //color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        height: 38,
                        width: 38,
                        //child: Text("Logo"),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.keyboard_backspace, size: 25),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("${categori} ${idCategori} List",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 38,
                      width: 38,
                      //child: Text("Logo"),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("asset/logo1.png")),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 28,
            ), //H1
            Container(
              width: double.infinity,
              height: 40,
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    categori,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 14,
            ),
            //listArt(),
            Expanded(
              child: Obx(
                () {
                  if (artikelController.artikelList.isEmpty) {
                    // Menampilkan CircularProgressIndicator() dengan penundaan waktu
                    return FutureBuilder(
                      future: Future.delayed(
                          Duration(seconds: 2)), // Mengatur waktu penundaan
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          // Menampilkan CircularProgressIndicator() saat dalam penundaan
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        } else {
                          // Menampilkan pesan jika waktu penundaan selesai dan artikelList masih kosong
                          return Center(
                            child: Text("Tidak ada data yang ditemukan"),
                          );
                        }
                      },
                    );
                  } else if (artikelController.artikelList.length == 0) {
                    // Menampilkan "Data Tidak Ditemukan" jika artikelList tidak kosong, tapi tidak ada data
                    return Center(
                      child: Text("Data Tidak Ditemukan"),
                    );
                  } else {
                    // Menampilkan ListView jika artikelList berisi data
                    return ListView.builder(
                      itemCount: artikelController.artikelList.length + 1,
                      itemBuilder: (context, index) {
                        if (index == artikelController.artikelList.length) {
                          return ElevatedButton(
                            onPressed: () {
                              artikelController.fetchNextPageArtikelList();
                            },
                            child: Text("Load More"),
                          );
                        } else {
                          ListArtikel artikel =
                              artikelController.artikelList[index];
                          return listArt(
                            // "${stringifyList(getDataString([
                            //       artikel.categories[0]
                            //     ]))}",
                            idCategori,
                            _parseHtmlString(artikel.title.rendered),
                            artikel.jetpackFeaturedMediaUrl,
                            waktu(artikel.date),
                            _parseHtmlString(artikel.content.rendered)
                                .replaceAll(RegExp('\n\n\n\n'), '\n\n'),
                          );
                        }
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}

// Map<int, List<String>> KategoriData = {
//   7: ['Warta'],
//   5: ['Urun Ide'],
//   1797: ['Bercerita'],
//   1798: ['Sajak'],
// };

// List<String> getDataString(List<int> profil) {
//   List<String> result = [];
//   for (int data in profil) {
//     if (KategoriData.containsKey(data)) {
//       result.addAll(KategoriData[data]!);
//     }
//   }
//   return result;
// }

String stringifyList(List<String> list) {
  return list.join(', ');
}

String _parseHtmlString(String htmlString) {
  var text = html.parse(htmlString).body!.text;
  return text;
}

String waktu(DateTime dateTime) {
  String formattedDate = DateFormat('yyyy-MM-dd').format(dateTime);

  return formattedDate;
}

class Data {
  final String data1;
  final String data2;

  Data({required this.data1, required this.data2});
}

class listArt extends StatelessWidget {
  listArt(this.categr, this.judul, this.img, this.tgl, this.isi);
  String categr;
  String judul;
  String img;
  String tgl;
  String isi;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          artikel_page(judul, categr, img, tgl, isi),
          transition: Transition.downToUp,
        );
      },
      child: Column(
        children: [
          //Articel
          listArticel(judul, "DD JTimur", tgl, categr, img),
          SizedBox(
            height: 12.5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 1.25,
                width: 250,
                color: Colors.grey,
              ),
              SizedBox(
                width: 25,
              )
            ],
          ),
        ],
      ),
    );
  }
}
