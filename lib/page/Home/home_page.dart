import 'package:flutter/material.dart';
import './widget/search.dart';

class home_page extends StatelessWidget {
  const home_page({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              search(),
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
                        "Latest News",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ],
                  )),
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Container(
                    width: double.infinity,
                    height: 344,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Container(
                        width: 350,
                        height: 320,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)),
                        alignment: Alignment.center,
                        child: Text("box")),
                  ),
                ],
              ),
              SizedBox(
                height: 17,
              ),
              Container(
                height: 8,
                width: 40,
                color: Colors.grey,
                child: Text("Indicator"),
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                height: 50,
                width: double.infinity,
                child: Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Text("Categories",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 69,
                      height: 26,
                      alignment: Alignment.center,
                      child: Text(
                        "SEE ALL",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)),
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 184,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 120,
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFFD9F5D2),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 120,
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFFD9F5D2),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 120,
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFFD9F5D2),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 120,
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFFD9F5D2),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                  width: double.infinity,
                  height: 40,
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Text("TRENDING STORY IN LIFESTYLE"),
                    ],
                  )),
              Stack(
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
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "A man stand alone watch the full Moon Night",
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
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
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: Colors.amber),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "Isabella   7 Min",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
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
              ),
              SizedBox(
                height: 8,
              ),
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Container(
                    height: 267,
                    width: double.infinity,
                    //color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 25, right: 25, top: 10, bottom: 10),
                    child: Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Go to bed early and get up early.",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                          SizedBox(
                            height: 22,
                          ),
                          Container(
                            height: 8,
                            width: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.green),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Staying awake while tired will make you feel more tired and irritable the next day. It’s almost never worth it to stay up late watching TV or getting extra work done. You’ll be more efficient if you start your day earlier and you won’t have to live with the hangover of being tired all the time…",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Read Full Story",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0075FF),
                    minimumSize: Size(double.infinity, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                color: Color(0xFFF3F3F3),
                width: 373,
                height: 3,
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 50,
                width: double.infinity,
                child: Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Text("Trendeing",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 69,
                      height: 26,
                      alignment: Alignment.center,
                      child: Text(
                        "SEE ALL",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ],
                ),
              ),
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Container(
                    height: 267,
                    width: double.infinity,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Container(
                      height: 243.25,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Stack(
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
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
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
              SizedBox(
                height: 8,
              ),
              Container(
                color: Color(0xFFF3F3F3),
                width: 373,
                height: 3,
              ),
              SizedBox(
                height: 8,
              ),
              Stack(
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
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
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
          ),
        ),
      ),
    );
  }
}
