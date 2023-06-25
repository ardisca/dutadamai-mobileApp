import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Artikel/artikel_page.dart';

class trendingRead extends StatelessWidget {
  trendingRead(this.judul, this.kategori, this.author, this.tgl, this.isi,
      this.img, this.isiR);
  String judul;
  String kategori;
  String author;
  String tgl;
  String isi;
  String isiR;
  String img;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 114,
              width: double.infinity,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 121,
                  width: double.infinity,
                  //color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Container(
                    height: 97,
                    width: double.infinity,
                    //color: Colors.amber,
                    child: Row(children: [
                      Container(
                        width: 97,
                        height: 97,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.amber,
                          image: img.isNotEmpty
                              ? DecorationImage(
                                  image: NetworkImage(img),
                                  fit: BoxFit.cover,
                                )
                              : DecorationImage(
                                  image:
                                      AssetImage("asset/artikel/imgKosong.jpg"),
                                  fit: BoxFit.cover,
                                ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              kategori,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 12),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              judul,
                              maxLines: 2,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 27,
                                  width: 27,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                          image:
                                              AssetImage("asset/profil.png")),
                                      color: Colors.amber),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "${author}   ${tgl}",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ]),
                  ),
                )
              ],
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Container(
                height: 267,
                width: double.infinity,
                //color: Colors.grey,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    judul,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Container(
                    height: 8,
                    width: 32,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    isi,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: () {
              Get.to(artikel_page(judul, "Urun Ide", img, tgl, isiR));
            },
            child: Text(
              "Read Full Story",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF0075FF),
              minimumSize: Size(double.infinity, 48),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Container(
          color: Theme.of(context).brightness == Brightness.light
              ? Color(0xFFF3F3F3) // warna untuk light mode
              : Color(0xFF4B4B4B),
          width: 373,
          height: 3,
        ),
        SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
