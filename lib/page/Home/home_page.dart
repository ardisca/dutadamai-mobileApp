import 'package:flutter/material.dart';
import './widget/search.dart';
import './widget/box.dart';
import './widget/box2.dart';
import './widget/event.dart';
import './widget/category.dart';
import './widget/listArticel.dart';
import './widget/tRead.dart';

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
              Box1(
                "Menyambut Hari Tolerasi Internasional Duta Damai Jatim Adakan Dialog Lintas Agama",
                "Duta Damai Jawa Timur",
                "17/11/2020",
              ),

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
                    Container(
                      width: 69,
                      height: 26,
                      alignment: Alignment.center,
                      child: Text(
                        "SEE ALL",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)),
                    )
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
                      Text("TRENDING STORY IN LIFESTYLE"),
                    ],
                  )),
              //TrendRead
              trendingRead(
                  "BNPT-DUTA DAMAI JAWA TIMUR GELAR DIALOG KEBANGSAAN DI KALANGAN PEMUDA",
                  "Warta",
                  "Duta Damai Jawa Timur",
                  "19/04/2023",
                  "Malang:- Badan Nasional Penanggulangan Terorisme Republik Indonesia (BNPT RI) bersama Duta Damai Jawa Timur menyelenggarakan dialog kebangsaan di kalangan pemuda di Universitas Brawijaya bertajuk Deen Assalam, Senin, (17/4)."),
              //h4
              Container(
                height: 50,
                width: double.infinity,
                child: Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Text("Trendeing",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 69,
                      height: 26,
                      alignment: Alignment.center,
                      child: Text(
                        "SEE ALL",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ],
                ),
              ),
              //Box2
              box2(
                "BNPT-DUTA DAMAI JAWA TIMUR GELAR DIALOG KEBANGSAAN DI KALANGAN PEMUDA",
                "Duta Damai Jawa Timur",
                "19/04/2023",
              ),
              SizedBox(
                height: 16,
              ),
              //Articel
              listArticel(
                  "BNPT-DUTA DAMAI JAWA TIMUR GELAR DIALOG KEBANGSAAN DI KALANGAN PEMUDA",
                  "Duta Damai Jawa Timur",
                  "19/04/2023",
                  "Warta"),
              SizedBox(
                height: 8,
              ),
              Container(
                color: Color(0xFFF3F3F3),
                width: 373,
                height: 3,
              ),
              SizedBox(
                height: 8,
              ),
              //Articel
              listArticel(
                  "BNPT-DUTA DAMAI JAWA TIMUR GELAR DIALOG KEBANGSAAN DI KALANGAN PEMUDA",
                  "Duta Damai Jawa Timur",
                  "19/04/2023",
                  "Warta"),
              SizedBox(
                height: 8,
              ),
              Container(
                color: Color(0xFFF3F3F3),
                width: 373,
                height: 3,
              ),
              SizedBox(
                height: 8,
              ),
              //Articel
              listArticel(
                  "BNPT-DUTA DAMAI JAWA TIMUR GELAR DIALOG KEBANGSAAN DI KALANGAN PEMUDA",
                  "Duta Damai Jawa Timur",
                  "19/04/2023",
                  "Warta"),
              SizedBox(
                height: 8,
              ),
              Container(
                color: Color(0xFFF3F3F3),
                width: 373,
                height: 3,
              ),
              SizedBox(
                height: 8,
              ),
              //Articel
              listArticel(
                  "BNPT-DUTA DAMAI JAWA TIMUR GELAR DIALOG KEBANGSAAN DI KALANGAN PEMUDA",
                  "Duta Damai Jawa Timur",
                  "19/04/2023",
                  "Warta"),
              SizedBox(
                height: 8,
              ),
              Container(
                color: Color(0xFFF3F3F3),
                width: 373,
                height: 3,
              ),
              SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
