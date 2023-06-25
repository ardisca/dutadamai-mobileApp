import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import '../Home/widget/search.dart';
import '../List/list_page.dart';

class menu_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 25, bottom: 25),
            child: Center(
              child: Column(
                children: [
                  search(),
                  SizedBox(
                    height: 25,
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
                            "Menu",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                        ],
                      )),
                  //H1 Tutup

                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(list_page(
                                  categori: "Menu",
                                  idCategori: "",
                                  search: ""));
                            },
                            child: Container(
                              height: 75,
                              width: 75,
                              child: Padding(
                                padding: EdgeInsets.all(
                                    15), // Ganti dengan nilai padding yang diinginkan
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "asset/menu/newsarticle.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.amber,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Artikel"),
                        ],
                      ),
                    ),
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
                            "Segera",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                        ],
                      )),
                  //H1 Tutup

                  Padding(
                    padding:
                        const EdgeInsets.only(left: 25, right: 25, top: 25),
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.topCenter,
                      //color: Colors.blue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 75,
                                width: 75,
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      15), // Ganti dengan nilai padding yang diinginkan
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage("asset/menu/hoax.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Cek\nHoax",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 75,
                                width: 75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.grey,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      15), // Ganti dengan nilai padding yang diinginkan
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "asset/menu/isyarat.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Bahasa\nIsyarat"),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 75,
                                width: 75,
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      15), // Ganti dengan nilai padding yang diinginkan
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "asset/menu/destination.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Wisata,\nKuliner\nJatim",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 75,
                                width: 75,
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      15), // Ganti dengan nilai padding yang diinginkan
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "asset/menu/traditional.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Seni\nJawa Timur",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: Container(
                      //color: Colors.amber,
                      width: double.infinity,
                      alignment: Alignment.centerLeft,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 75,
                                width: 75,
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      15), // Ganti dengan nilai padding yang diinginkan
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "asset/menu/religion.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Tempat\nIbadah",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 75,
                                width: 75,
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      15), // Ganti dengan nilai padding yang diinginkan
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage("asset/menu/evnt.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Event\ndan\nPelatihan",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 75,
                                width: 75,
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      15), // Ganti dengan nilai padding yang diinginkan
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "asset/menu/console.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Game\ndan\nKuis",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 75,
                                width: 75,
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      15), // Ganti dengan nilai padding yang diinginkan
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage("asset/menu/siren.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Kontak\nDarurat",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
