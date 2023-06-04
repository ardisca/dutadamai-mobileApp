import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/List/list_page.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';

class category extends StatelessWidget {
  const category({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 184,
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(list_page("Warta"));
                },
                child: Container(
                  width: 120,
                  height: 160,
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Lottie.asset(
                          'asset/animationC/d.json',
                          height: 114,
                          repeat: true,
                        ),
                        Text("Warta",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                            )),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFD9F5D2),
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(list_page("Urun Ide"));
                },
                child: Container(
                  width: 120,
                  height: 160,
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Lottie.asset('asset/animationC/a.json', height: 114),
                        Text("Urun Ide",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                            )),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFD9F5D2),
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(list_page("Bercerita"));
                },
                child: Container(
                  width: 120,
                  height: 160,
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Lottie.asset('asset/animationC/b.json', height: 114),
                        Text("Bercerita",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                            )),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFD9F5D2),
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(list_page("Sajak"));
                },
                child: Container(
                  width: 120,
                  height: 160,
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Lottie.asset(
                          'asset/animationC/n.json',
                        ),
                        Text("Sajak",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                            )),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFD9F5D2),
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
