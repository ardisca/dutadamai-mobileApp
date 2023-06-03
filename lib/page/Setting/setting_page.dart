import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/page/Home/widget/search.dart';
import 'package:get/get.dart';

import '../Thems/thema.dart';

class setting_page extends StatefulWidget {
  @override
  State<setting_page> createState() => _setting_pageState();
}

class _setting_pageState extends State<setting_page> {
  final ThemeController _themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.only(top: 25, bottom: 25),
            child: Center(
              child: Column(
                children: [
                  search(),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Container(
                        width: 175,
                        height: 175,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset("asset/profil.png"))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //H1
                  Container(
                      width: double.infinity,
                      //color: Colors.amber,
                      child: Center(
                        child: Text(
                          "Duta Damai\nJawa Timur",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      )),

                  //H1 Tutup

                  Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          '    Duta Damai Regional Jawa Timur dibentuk dan dikukuhkan pada 27 Juli 2017 dan kemudian melakukan regenerasi pada 07-10 September 2020, guna menyebarkan konten-konten positif dan sebagai cara kontra narasi negatif di dunia maya. Serta untuk mencegah penyebaran konten-konten yang mengandung radikalisme dan terorisme serta informasi atau berita palsu (hoaks).',
                          softWrap: true,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
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
                            "Setting",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                        ],
                      )),
                  //H1 Tutup
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Tema (Beta)",
                          style: TextStyle(
                              fontSize: 17.5, fontWeight: FontWeight.w500),
                        ),
                        Obx(() => Switch(
                              value: _themeController.isDarkModeEnabled.value,
                              onChanged: (value) {
                                _themeController.toggleDarkMode();
                              },
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      )),
    );
  }
}
