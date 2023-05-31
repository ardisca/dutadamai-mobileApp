import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/page/Home/widget/search.dart';

class member_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 25, bottom: 25),
            child: Center(
              child: Column(
                children: [
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
                          "DKV",
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
                  Container(
                    width: double.infinity,
                    //color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              memberP(Colors.blue, "Nama bin Nama", "Tugas",
                                  "asset/avatar/avatarBoy.png"),
                              SizedBox(
                                width: 12.5,
                              ),
                              memberP(Colors.blue, "Nama bin Nama", "Tugas",
                                  "asset/avatar/avatarBoy.png"),
                              SizedBox(
                                width: 12.5,
                              ),
                              memberP(Colors.blue, "Nama bin Nama", "Tugas",
                                  "asset/avatar/avatarBoy.png"),
                              SizedBox(
                                width: 12.5,
                              ),
                              memberP(Colors.blue, "Nama bin Nama", "Tugas",
                                  "asset/avatar/avatarBoy.png"),
                              SizedBox(
                                width: 12.5,
                              ),
                              memberP(Colors.blue, "Nama bin Nama", "Tugas",
                                  "asset/avatar/avatarBoy.png"),
                            ]),
                      ),
                    ),
                  ),
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
                          "IT",
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
                  Container(
                    width: double.infinity,
                    //color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              memberP(Colors.amber, "Nama bin Nama", "Tugas",
                                  "asset/avatar/avatarGirl.png"),
                              SizedBox(
                                width: 12.5,
                              ),
                              memberP(Colors.amber, "Nama bin Nama", "Tugas",
                                  "asset/avatar/avatarGirl.png"),
                              SizedBox(
                                width: 12.5,
                              ),
                              memberP(Colors.amber, "Nama bin Nama", "Tugas",
                                  "asset/avatar/avatarGirl.png"),
                              SizedBox(
                                width: 12.5,
                              ),
                              memberP(Colors.amber, "Nama bin Nama", "Tugas",
                                  "asset/avatar/avatarGirl.png"),
                              SizedBox(
                                width: 12.5,
                              ),
                              memberP(Colors.amber, "Nama bin Nama", "Tugas",
                                  "asset/avatar/avatarGirl.png"),
                            ]),
                      ),
                    ),
                  ),
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
                          "Blogger",
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
                  Container(
                    width: double.infinity,
                    //color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              memberP(Colors.blue, "Nama bin Nama", "Tugas",
                                  "asset/avatar/avatarBoy.png"),
                              SizedBox(
                                width: 12.5,
                              ),
                              memberP(Colors.blue, "Nama bin Nama", "Tugas",
                                  "asset/avatar/avatarBoy.png"),
                              SizedBox(
                                width: 12.5,
                              ),
                              memberP(Colors.blue, "Nama bin Nama", "Tugas",
                                  "asset/avatar/avatarBoy.png"),
                              SizedBox(
                                width: 12.5,
                              ),
                              memberP(Colors.blue, "Nama bin Nama", "Tugas",
                                  "asset/avatar/avatarBoy.png"),
                              SizedBox(
                                width: 12.5,
                              ),
                              memberP(Colors.blue, "Nama bin Nama", "Tugas",
                                  "asset/avatar/avatarBoy.png"),
                            ]),
                      ),
                    ),
                  ),
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
                          "Public Relation",
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
                  Container(
                    width: double.infinity,
                    //color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              memberP(Colors.amber, "Nama bin Nama", "Tugas",
                                  "asset/avatar/avatarGirl.png"),
                              SizedBox(
                                width: 12.5,
                              ),
                              memberP(Colors.amber, "Nama bin Nama", "Tugas",
                                  "asset/avatar/avatarGirl.png"),
                              SizedBox(
                                width: 12.5,
                              ),
                              memberP(Colors.amber, "Nama bin Nama", "Tugas",
                                  "asset/avatar/avatarGirl.png"),
                              SizedBox(
                                width: 12.5,
                              ),
                              memberP(Colors.amber, "Nama bin Nama", "Tugas",
                                  "asset/avatar/avatarGirl.png"),
                              SizedBox(
                                width: 12.5,
                              ),
                              memberP(Colors.amber, "Nama bin Nama", "Tugas",
                                  "asset/avatar/avatarGirl.png"),
                            ]),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class memberP extends StatelessWidget {
  memberP(this.warna, this.nama, this.tugas, this.avatar);
  var warna;
  String nama;
  String tugas;
  String avatar;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 203,
      decoration: BoxDecoration(
        border: Border.all(
          color: warna,
          width: 1.0,
        ),
        //color: Colors.amber,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              //color: Colors.grey,
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                image: AssetImage(avatar),
              ),
            ),
          ),
          SizedBox(
            height: 7.5,
          ),
          Text(nama,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17.5)),
          SizedBox(
            height: 5,
          ),
          Text(tugas, style: TextStyle(fontWeight: FontWeight.w600)),
          SizedBox(
            height: 5,
          ),
          Container(
            width: 121,
            height: 33,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: warna,
                width: 2.0,
              ),
            ),
            child: Center(
              child: Text("Social Media",
                  //textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w400, color: warna)),
            ),
          )
        ],
      ),
    );
  }
}
