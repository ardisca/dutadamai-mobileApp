import 'package:flutter/material.dart';

class listArticel extends StatelessWidget {
  listArticel(this.judul, this.autor, this.tgl, this.kategori, this.img);
  String judul;
  String autor;
  String tgl;
  String kategori;
  String img;
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
                  color: Colors.black,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: img != ""
                      ? FadeInImage(
                          placeholder:
                              AssetImage("asset/artikel/imgKosong.jpg"),
                          image: NetworkImage(img ?? ''),
                          fit: BoxFit.cover,
                        )
                      : Image(
                          image: AssetImage("asset/artikel/imgKosong.jpg"),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                              "${autor}",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Text(
                          "${tgl}",
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
