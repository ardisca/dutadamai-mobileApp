import 'dart:ffi';

import 'package:get/get.dart';
import 'package:flutter/material.dart';

class artikel_page extends StatelessWidget {
  artikel_page(this.judul, this.categr, this.img, this.tgl, this.isi);

  String judul;
  String categr;
  String img;
  String tgl;
  String isi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Container(
                      height: 400,
                      width: double.infinity,
                      decoration: BoxDecoration(color: Colors.black),
                      child: Image(
                        image: img != ""
                            ? NetworkImage(img)
                            : NetworkImage(
                                "https://t4.ftcdn.net/jpg/04/73/25/49/360_F_473254957_bxG9yf4ly7OBO5I0O5KABlN930GwaMQz.jpg",
                              ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: Container(
                        width: 76,
                        height: 32,
                        decoration: BoxDecoration(
                            color: Color(0xFFD9F5D2),
                            borderRadius: BorderRadius.circular(7.5)),
                        child: Center(child: Text("${categr}")),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.black
                            : Colors.white,
                      ),
                      child: Icon(Icons.close),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            //H1
            Align(
              child: Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 25, right: 25),
                  //color: Colors.amber,
                  child: Wrap(
                    children: [
                      Text(
                        "${judul}",
                        softWrap: true,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("asset/profil.png")),
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.amber),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Duta Damai Jawa Timur",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            tgl,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.share),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 1,
              decoration: BoxDecoration(color: Colors.grey),
            ),
            SizedBox(
              height: 27,
            ),
            Container(
              padding: EdgeInsets.only(left: 25, right: 25, bottom: 25),
              child: Wrap(
                children: [
                  Text(
                    isi,
                    softWrap: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
