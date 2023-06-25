import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:html/parser.dart' as html;
import 'package:card_swiper/card_swiper.dart';
import 'package:get/get.dart';

import '../../../controler/BoxArtikelControler.dart';
import '../../../model/list_artikel.dart';
import '../../Artikel/artikel_page.dart';
import '../widget/box.dart';

class Box1Aksi extends StatelessWidget {
  late BoxArtikelController artikelControllerH1 =
      Get.put(BoxArtikelController("4", "", "Ini di HomePage"));

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Obx(() {
          if (artikelControllerH1.artikelList.isEmpty) {
            return CircularProgressIndicator();
          } else {
            return Swiper(
              itemBuilder: (BuildContext context, int index) {
                ListArtikel artikel1 = artikelControllerH1.artikelList[index];
                return GestureDetector(
                  onTap: () {
                    Get.to(artikel_page(
                        _parseHtmlString(artikel1.title.rendered),
                        "News",
                        artikel1.jetpackFeaturedMediaUrl,
                        waktu(artikel1.date),
                        _parseHtmlString(artikel1.content.rendered)
                            .replaceAll(RegExp('\n\n\n\n'), '\n\n')));
                  },
                  child: Box1(
                    _parseHtmlString(artikel1.title.rendered),
                    "Duta Damai Jawa Timur",
                    waktu(artikel1.date),
                    artikel1.jetpackFeaturedMediaUrl,
                  ),
                );
              },
              itemCount: 3,
              itemWidth: double.infinity,
              itemHeight: 320,
              layout: SwiperLayout.TINDER,
            );
          }
        }));
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
