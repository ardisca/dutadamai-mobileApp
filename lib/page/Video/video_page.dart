import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/page/Home/widget/search.dart';

class video_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 25, bottom: 25),
            child: Center(
              child: Column(children: [
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
                        "Featured Video",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ],
                  ),
                ),
                //H1 Tutup
                SizedBox(
                  height: 25,
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25, right: 25),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 203,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black,
                            ),
                          ),
                          Icon(
                            Icons.play_circle,
                            size: 70,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: double.infinity,
                      alignment: Alignment.bottomLeft,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            "Keseruan Jambore\nPerdamaian 2021",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    //a
                    Padding(
                      padding: EdgeInsets.only(left: 25, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    //color: Colors.grey,
                                    image: DecorationImage(
                                        image: AssetImage("asset/profil.png")),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text("Duta Damai Jawa Timur",
                                  style: TextStyle(
                                      //color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                          Text("31/05/2023",
                              style: TextStyle(
                                  //color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
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
                            "Youtube Video",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                    //H1 Tutup
                    SizedBox(
                      height: 13,
                    ),
                    Container(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(left: 25, right: 25),
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                videoYT(
                                    h: 161, w: 269, Jdl: "Judul Nih Youtube"),
                                SizedBox(
                                  width: 10,
                                ),
                                videoYT(
                                    h: 161, w: 269, Jdl: "Judul Nih Youtube"),
                                SizedBox(
                                  width: 10,
                                ),
                                videoYT(
                                    h: 161, w: 269, Jdl: "Judul Nih Youtube"),
                              ],
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 30,
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
                            "Instagram Post",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                    //H1 Tutup
                    SizedBox(
                      height: 13,
                    ),
                    Container(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(left: 25, right: 25),
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                videoYT(h: 155, w: 155, Jdl: "Judul Nih IG"),
                                SizedBox(
                                  width: 10,
                                ),
                                videoYT(h: 155, w: 155, Jdl: "Judul Nih IG"),
                                SizedBox(
                                  width: 10,
                                ),
                                videoYT(h: 155, w: 155, Jdl: "Judul Nih IG"),
                              ],
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 30,
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
                            "Tiktok Video",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                    //H1 Tutup
                    SizedBox(
                      height: 13,
                    ),
                    Container(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(left: 25, right: 25),
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                videoYT(h: 160, w: 120, Jdl: "Judul Nih TT"),
                                SizedBox(
                                  width: 10,
                                ),
                                videoYT(h: 160, w: 120, Jdl: "Judul Nih TT"),
                                SizedBox(
                                  width: 10,
                                ),
                                videoYT(h: 160, w: 120, Jdl: "Judul Nih TT"),
                              ],
                            )),
                      ),
                    ),
                    //a
                  ],
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

class videoYT extends StatelessWidget {
  videoYT({required this.h, required this.w, required this.Jdl});
  double h;
  double w;
  String Jdl;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              //alignment: Alignment.topLeft,
              height: h,
              width: w,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(15)),
            ),
            Center(
              child: Icon(
                Icons.play_circle,
                size: 49,
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            //color: Colors.black,
            width: w,
            //color: Colors.amber,
            alignment: Alignment.topLeft,
            child: Text(Jdl,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.5)))
      ],
    );
  }
}
