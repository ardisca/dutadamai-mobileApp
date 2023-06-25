import 'package:flutter/material.dart';

class Box1 extends StatelessWidget {
  Box1(this.judul, this.author, this.tgl, this.img);
  String judul;
  String author;
  String tgl;
  String img;
  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment: Alignment.bottomLeft,
      children: [
        // Container(
        //   color: Colors.amber,
        //   width: double.infinity,
        //   height: 344,
        //   //color: Colors.amber,
        // ),
        Container(
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 20),
          width: double.infinity,
          height: 320,
          alignment: Alignment.bottomLeft,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(25),
            image: img.isNotEmpty
                ? DecorationImage(
                    image: NetworkImage(img),
                    fit: BoxFit.cover,
                  )
                : DecorationImage(
                    image: AssetImage("asset/artikel/imgKosong.jpg"),
                    fit: BoxFit.cover,
                  ),
          ),
        ),
        Container(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 20),
            width: double.infinity,
            height: 320,
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(25)),
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
      ],
    );
  }
}
