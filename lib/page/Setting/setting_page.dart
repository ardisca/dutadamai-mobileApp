import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/page/Home/widget/search.dart';

class setting_page extends StatelessWidget {
  const setting_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.only(top: 25, bottom: 25),
            child: Center(
              child: Column(
                children: [
                  search(),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Container(
                        width: 75,
                        height: 75,
                        child: Image.asset("asset/logo1.png")),
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
                            "Setting",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                        ],
                      )),
                  //H1 Tutup
                ],
              ),
            )),
      )),
    );
  }
}
