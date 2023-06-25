import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Artikel/artikel_page.dart';

class box2 extends StatelessWidget {
  box2(this.judul, this.author, this.tgl, this.img, this.isi, this.ktgr);
  String judul;
  String author;
  String tgl;
  String img;
  String isi;
  String ktgr;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          height: 267,
          width: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Container(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 20),
              height: 243.25,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black,
                  image: DecorationImage(
                      image: NetworkImage(img), fit: BoxFit.cover))),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: InkWell(
            onTap: () {
              Get.to(artikel_page(judul, ktgr, img, tgl, isi));
            },
            child: Container(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 20),
              height: 243.25,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black.withOpacity(0.6),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(judul,
                      maxLines: 2,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                image: img.isNotEmpty
                                    ? DecorationImage(
                                        image: NetworkImage(img),
                                        fit: BoxFit.cover,
                                      )
                                    : DecorationImage(
                                        image: AssetImage(
                                            "asset/artikel/imgKosong.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(author,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      Text(tgl,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
