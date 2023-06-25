import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../List/list_page.dart';

class search extends StatelessWidget {
  const search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 350,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          //color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 38,
              width: 38,
              //child: Text("Logo"),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage("asset/logobnpt.png")),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
              child: TextField(
                textInputAction: TextInputAction.search,
                textAlign: TextAlign.start,
                autofocus: false,
                //maxLength: 15,
                textAlignVertical: TextAlignVertical.bottom,
                onSubmitted: (value) {
                  Get.to(list_page(
                      categori: "Search", idCategori: "", search: value));
                  //print("${value}");
                },
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.black),
                    filled: true,
                    hintText: "Search",
                    fillColor: Theme.of(context).brightness == Brightness.light
                        ? Color(0xFFE7EBF6) // warna untuk light mode
                        : Colors.grey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    )),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 38,
              width: 38,
              //child: Text("Logo"),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage("asset/logo1.png")),
              ),
            ),
          ],
        ));
  }
}
