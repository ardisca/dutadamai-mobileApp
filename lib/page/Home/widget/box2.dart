import 'package:flutter/material.dart';

class box2 extends StatelessWidget {
  box2(this.judul, this.author, this.tgl);
  String judul;
  String author;
  String tgl;
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
                      image: NetworkImage(
                          "https://dutadamaijawatimur.id/wp-content/uploads/2023/04/WhatsApp-Image-2023-04-17-at-15.46.07-750x375.jpg"),
                      fit: BoxFit.cover))),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
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
            ),
          ),
        ),
      ],
    );
  }
}
