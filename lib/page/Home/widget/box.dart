import 'package:flutter/material.dart';

class Box1 extends StatelessWidget {
  Box1(this.judul, this.author, this.tgl);
  String judul;
  String author;
  String tgl;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Container(
              width: double.infinity,
              height: 344,
              //color: Colors.amber,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Container(
                  padding: EdgeInsets.only(left: 16, right: 16, bottom: 20),
                  width: 350,
                  height: 320,
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://dutadamaijawatimur.id/wp-content/uploads/2020/11/WhatsApp-Image-2020-11-16-at-13.48.40-768x576.jpeg"),
                          fit: BoxFit.cover))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Container(
                  padding: EdgeInsets.only(left: 16, right: 16, bottom: 20),
                  width: 350,
                  height: 320,
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20)),
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
                                    //color: Colors.grey,
                                    image: DecorationImage(
                                        image: AssetImage("asset/profil.png")),
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
                  )),
            ),
          ],
        ),
        SizedBox(
          height: 17,
        ),
        Container(
          height: 8,
          width: 40,
          color: Colors.grey,
          child: Text("Indicator"),
        ),
      ],
    );
  }
}
