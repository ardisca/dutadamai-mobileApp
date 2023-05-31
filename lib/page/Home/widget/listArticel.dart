import 'package:flutter/material.dart';

class listArticel extends StatelessWidget {
  listArticel(this.judul, this.autor, this.tgl, this.kategori);
  String judul;
  String autor;
  String tgl;
  String kategori;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
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
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://dutadamaijawatimur.id/wp-content/uploads/2023/04/WhatsApp-Image-2023-04-17-at-15.46.07-750x375.jpg"),
                        fit: BoxFit.cover)),
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
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      judul,
                      maxLines: 2,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
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
                              image: DecorationImage(
                                  image: AssetImage("asset/profil.png")),
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.amber),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "${autor}   ${tgl}",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
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
    );
  }
}
