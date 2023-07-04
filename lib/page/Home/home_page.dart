import 'package:flutter/material.dart';
import 'package:flutter_application_1/controler/ArtikelTunggalControler.dart';
import 'package:flutter_application_1/controler/ListHomeControler.dart';
import '../../controler/ArtikelTglCtrl.dart';
import '../../model/list_artikel.dart';
import './widget/search.dart';
import './widget/box2.dart';
import './widget/event.dart';
import './widget/category.dart';
import './widget/listArticel.dart';
import './widget/tRead.dart';
import './aksi/H1go.dart';
import '../Artikel/artikel_page.dart';
import 'package:intl/intl.dart';
import 'package:html/parser.dart' as html;
import 'package:get/get.dart';

class home_page extends StatelessWidget {
  const home_page({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),

              //SEARCH
              search(),

              SizedBox(
                height: 28,
              ),

              //H1
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
                        "Latest News",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ],
                  )),
              //BOX1
              // Box1(
              //   "Menyambut Hari Tolerasi Internasional Duta Damai Jatim Adakan Dialog Lintas Agama",
              //   "Duta Damai Jawa Timur",
              //   "17/11/2020",
              // ),
              Box1Aksi(),
              SizedBox(
                height: 17,
              ),
              //Iklan
              event(),
              //aaaaaaaaaaaaaaaaaaaaaaaaa

              SizedBox(
                height: 32,
              ),

              //H2
              Container(
                height: 50,
                width: double.infinity,
                child: Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Text("Categories",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 8,
                    ),
                  ],
                ),
              ),
              //Kategori
              category(),
              SizedBox(
                height: 32,
              ),
              //H3
              Container(
                  width: double.infinity,
                  height: 40,
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Text("TRENDING STORY IN Urun Ide"),
                    ],
                  )),
              //TrendRead
              Obx(() {
                late ArtikelTunggalController artTgl1 =
                    Get.put(ArtikelTunggalController("5", "", "HomePageArt1"));
                if (artTgl1.artikelList.isEmpty) {
                  return CircularProgressIndicator();
                } else {
                  ListArtikel artikelTgl1 = artTgl1.artikelList[0];
                  return trendingRead(
                      _parseHtmlString(artikelTgl1.title.rendered),
                      "Urun Ide",
                      "DD JTM",
                      waktu(artikelTgl1.date),
                      _parseHtmlString(artikelTgl1.excerpt.rendered),
                      artikelTgl1.jetpackFeaturedMediaUrl,
                      _parseHtmlString(artikelTgl1.content.rendered)
                          .replaceAll(RegExp('\n\n\n\n'), '\n\n'),
                      artikelTgl1.jetpackShortlink,
                      _parseHtmlString(artikelTgl1.excerpt.rendered));
                }
              }),
              // trendingRead(
              //     "BNPT-DUTA DAMAI JAWA TIMUR GELAR DIALOG KEBANGSAAN DI KALANGAN PEMUDA",
              //     "Warta",
              //     "DD JTM",
              //     "19/04/2023",
              //     "Malang:- Badan Nasional Penanggulangan Terorisme Republik Indonesia (BNPT RI) bersama Duta Damai Jawa Timur menyelenggarakan dialog kebangsaan di kalangan pemuda di Universitas Brawijaya bertajuk Deen Assalam, Senin, (17/4)."),
              //h4
              Container(
                height: 50,
                width: double.infinity,
                child: Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Text("Latest Articles",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 8,
                    ),
                  ],
                ),
              ),
              //Box2
              Obx(() {
                late ArtikelTglCtr artTgl11 =
                    Get.put(ArtikelTglCtr("4", "", "HomePageArt2"));
                if (artTgl11.artikelList.isEmpty) {
                  return CircularProgressIndicator();
                } else {
                  ListArtikel artikelTgl11 = artTgl11.artikelList[0];
                  return box2(
                      _parseHtmlString(artikelTgl11.title.rendered),
                      "Duta Damai Jatim",
                      waktu(artikelTgl11.date),
                      artikelTgl11.jetpackFeaturedMediaUrl,
                      _parseHtmlString(artikelTgl11.content.rendered)
                          .replaceAll(RegExp('\n\n\n\n'), '\n\n'),
                      "Warta",
                      artikelTgl11.jetpackShortlink,
                      artikelTgl11.excerpt.rendered
                      //artikelTgl11.categories.join(", "),
                      );
                }
              }),
              SizedBox(
                height: 16,
              ),

              //Articel
              Obx(() {
                late ListHomeControler listH = Get.put(
                    ListHomeControler("", "", "Data dari Home Page ke 3"));
                if (listH.artikelList.isEmpty) {
                  return CircularProgressIndicator();
                } else {
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      ListArtikel artikel12 = listH.artikelList[index];
                      String ktgrs = "";
                      if (artikel12.categories.length > 1) {
                        ktgrs = "Campuran";
                      } else {
                        if (artikel12.categories.join(", ") == "4") {
                          ktgrs = "Warta";
                        } else if (artikel12.categories.join(", ") == "5") {
                          ktgrs = "Urun Ide";
                        } else if (artikel12.categories.join(", ") == "1797") {
                          ktgrs = "Bercerita";
                        } else if (artikel12.categories.join(", ") == "1798") {
                          ktgrs = "Sajak";
                        } else {
                          ktgrs = "Lain-Lain";
                        }
                      }
                      return listArtikel1(
                        judul: _parseHtmlString(artikel12.title.rendered),
                        tgl: waktu(artikel12.date),
                        img: artikel12.jetpackFeaturedMediaUrl,
                        isi: _parseHtmlString(artikel12.content.rendered)
                            .replaceAll(RegExp('\n\n\n\n'), '\n\n'),
                        catgr: ktgrs,
                        url: artikel12.jetpackShortlink,
                        deskripsi: _parseHtmlString(artikel12.excerpt.rendered),
                      );
                    },
                  );
                }
              }),
            ],
          ),
        ),
      ),
    );
  }
}

class listArtikel1 extends StatelessWidget {
  listArtikel1(
      {required this.judul,
      required this.tgl,
      required this.img,
      required this.isi,
      required this.catgr,
      required this.url,
      required this.deskripsi});
  String judul;
  String tgl;
  String img;
  String isi;
  String catgr;
  String url;
  String deskripsi;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            // Aksi yang ingin dilakukan saat widget diklik
            Get.to(artikel_page(judul, catgr, img, tgl, isi, url, deskripsi));
          },
          child: listArticel(
            judul,
            "Duta Damai Jatim",
            tgl,
            catgr,
            img,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 27.5),
            child: Container(
              color: Theme.of(context).brightness == Brightness.light
                  ? Color(0xFFF3F3F3) // warna untuk light mode
                  : Color(0xFF4B4B4B),
              width: 250,
              height: 1,
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
      ],
    );
  }
}

String _parseHtmlString(String htmlString) {
  var text = html.parse(htmlString).body!.text;
  return text;
}

String waktu(DateTime dateTime) {
  String formattedDate = DateFormat('yyyy-MM-dd').format(dateTime);

  return formattedDate;
}
