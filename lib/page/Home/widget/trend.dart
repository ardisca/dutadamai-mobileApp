import 'package:flutter/material.dart';

class trending extends StatelessWidget {
  const trending({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 114,
          width: double.infinity,
        ),
        Stack(
          alignment: Alignment.center,
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
                          "LIFESTYLE",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 12),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "A man stand alone watch the full Moon Night",
                          maxLines: 2,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
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
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.amber),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Isabella   7 Min",
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
        ),
      ],
    );
  }
}
