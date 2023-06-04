import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/Artikel/artikel_page.dart';

import 'package:get/get.dart';
import '../Home/widget/listArticel.dart';

class list_page extends StatelessWidget {
  list_page(this.categori);

  String categori;
  @override
  Widget build(BuildContext context) {
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
                    Text("${categori} List",
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
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 15,
                itemBuilder: (context, index) {
                  return listArt("${categori}");
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}

class listArt extends StatelessWidget {
  listArt(this.categr);
  String categr;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          artikel_page(
              "BNPT-DUTA DAMAI JAWA TIMUR GELAR DIALOG KEBANGSAAN DI KALANGAN PEMUDA",
              categr),
          transition: Transition.downToUp,
        );
      },
      child: Column(
        children: [
          //Articel
          listArticel(
              "BNPT-DUTA DAMAI JAWA TIMUR GELAR DIALOG KEBANGSAAN DI KALANGAN PEMUDA",
              "Duta Damai Jawa Timur",
              "19/04/2023",
              categr),
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
