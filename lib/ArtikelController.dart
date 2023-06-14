import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'list_artikel.dart';

class ArtikelController extends GetxController {
  var artikelList = <ListArtikel>[].obs;
  var currentPage = 10;

  @override
  void onInit() {
    fetchArtikelList();
    super.onInit();
  }

  void fetchArtikelList() async {
    var url =
        'https://dutadamaijawatimur.id/wp-json/wp/v2/posts?per_page=$currentPage&page=1';

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
    currentPage = currentPage + 5;
    fetchArtikelList();
  }
}
