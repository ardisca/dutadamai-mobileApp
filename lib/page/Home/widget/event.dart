import 'package:flutter/material.dart';

class event extends StatelessWidget {
  const event({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          width: double.infinity,
          color: Colors.amber,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Container(
            width: 350,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage("asset/banner.png"))),
            alignment: Alignment.center,
          ),
        ),
      ],
    );
  }
}
