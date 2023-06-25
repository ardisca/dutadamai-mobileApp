import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../model/list_artikel.dart';

class ArtikelTunggalController extends GetxController {
  ArtikelTunggalController(
    this.categori,
    this.search,
    this.tes,
  );
  String categori;
  String search;
  String tes;
  var artikelList = <ListArtikel>[].obs;
  var currentPage = 1;
  @override
  void onInit() {
    fetchArtikelList();
    super.onInit();
  }

  void fetchArtikelList() async {
    print('categori: $categori');
    print('search: $search');

    print('INI TEST: $tes');
    var url =
        'https://dutadamaijawatimur.id/wp-json/wp/v2/posts?per_page=$currentPage&page=1';
    if (categori != "") {
      url += '&categories=$categori';
    }
    if (search != "") {
      url += '&search=$search';
    }

    try {
      var response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        var data = json.decode(response.body) as List<dynamic>;
        artikelList.value =
            data.map((item) => ListArtikel.fromJson(item)).toList();
      } else {
        print('Error - ${response.statusCode}');
      }
    } catch (e) {
      print('Error - $e');
    }
  }

  void fetchNextPageArtikelList() {
    print('categori: $categori');
    print('search: $search');
    print('INI TEST: $tes');
    currentPage = currentPage + 5;
    fetchArtikelList();
  }

  void BackART() {
    currentPage = 10;
  }
}
