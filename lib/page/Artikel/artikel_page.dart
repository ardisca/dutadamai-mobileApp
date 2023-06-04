import 'dart:ffi';

import 'package:get/get.dart';
import 'package:flutter/material.dart';

class artikel_page extends StatelessWidget {
  artikel_page(this.judul, this.categr);

  String judul;
  String categr;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Container(
                      height: 400,
                      width: double.infinity,
                      decoration: BoxDecoration(color: Colors.black),
                      child: Image(
                          image: NetworkImage(
                              "https://dutadamaijawatimur.id/wp-content/uploads/2023/04/WhatsApp-Image-2023-04-17-at-15.46.07-750x375.jpg"),
                          fit: BoxFit.cover),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: Container(
                        width: 76,
                        height: 32,
                        decoration: BoxDecoration(
                            color: Color(0xFFD9F5D2),
                            borderRadius: BorderRadius.circular(7.5)),
                        child: Center(child: Text("${categr}")),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      child: Icon(Icons.close),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            //H1
            Align(
              child: Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 25, right: 25),
                  //color: Colors.amber,
                  child: Wrap(
                    children: [
                      Text(
                        "${judul}",
                        softWrap: true,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("asset/profil.png")),
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.amber),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Duta Damai Jawa Timur",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "31/12/2023",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.share),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 1,
              decoration: BoxDecoration(color: Colors.grey),
            ),
            SizedBox(
              height: 27,
            ),
            Container(
              padding: EdgeInsets.only(left: 25, right: 25, bottom: 25),
              child: Wrap(
                children: [
                  Text(
                    "Lorem ipsum dolor sit amet. Ad obcaecati modi qui enim sunt sed consectetur recusandae eum consequatur voluptas et rerum rerum et aspernatur sunt hic nostrum repellendus. Eos voluptatum quia qui quas eligendi qui quam expedita quo natus tenetur 33 deserunt Quis. Ea sequi culpa vel aliquid quaerat non harum nesciunt ut ipsam commodi qui placeat excepturi. Vel deserunt fugiat qui quidem veniam sed quia deserunt sed rerum pariatur qui officia laudantium aut reiciendis voluptates a recusandae autem! Et enim possimus aut doloribus voluptatum 33 veritatis doloribus et iste culpa et quia dolorem sed libero ipsa eos omnis iure?\n\nSit molestiae nihil sit quia voluptas ab velit quaerat et voluptas labore aut sunt enim est nobis dolorum. Aut nihil inventore ea quibusdam inventore aut doloremque dolorem. Hic tempore veniam aut nemo tempore est dolor dolore sed atque consequatur et rerum nostrum. At dolor error At internos fugit et earum unde non natus repellat aut pariatur nihil. Sit itaque galisum ut harum fugit sed enim vero eos facilis ducimus eos officiis esse qui consectetur dolor et quam molestias. Non eligendi culpa At nihil beatae sed dolores velit et voluptas cumque ut dicta nulla. Ut nisi quia ut omnis dolor est eius soluta id molestiae architecto vel cumque maiores ea possimus dolor. \n\nEt maxime ipsam aut adipisci soluta qui delectus pariatur ex voluptatem ratione qui sint fugiat in odio sunt et cupiditate ipsam. Aut animi deserunt qui velit quisquam aut itaque quos sit voluptates iusto eos autem temporibus et voluptas aliquam. Ab nostrum nihil ad soluta amet ut architecto exercitationem hic adipisci omnis ut galisum ratione eos necessitatibus internos. Aut voluptatibus assumenda sit quia deleniti eos temporibus sequi aut tempore quae et maxime quibusdam. Id aliquid illum non labore iure ut pariatur veniam eos velit internos ut consequuntur laboriosam. Qui vero quasi vel veniam omnis ut voluptatem totam et eius necessitatibus et expedita illo qui voluptatibus dolore eos repudiandae optio. Vel consequatur voluptatem et ducimus aliquid ut iure omnis. \n\nRem galisum velit est quae reprehenderit eum maiores quos ut Quis quam qui sint ducimus. Est quod excepturi et dolores enim hic quibusdam nesciunt qui aliquid voluptas non molestias repellendus sit placeat doloremque. Ut blanditiis accusamus aut repellendus consequuntur et eveniet unde 33 animi necessitatibus aut dolorum similique in iure odio nam officia quis. Qui suscipit delectus et vero quod sit voluptas neque vel doloribus obcaecati. Aut consectetur omnis et saepe vitae aut consequatur ullam sit numquam voluptas sed magnam quia? In nulla voluptas nam dignissimos aperiam ut accusamus dolor qui architecto doloremque eos praesentium minus et quia consectetur et omnis atque. Sed expedita sint qui exercitationem facilis aut dolorum rerum. \n\nEst nihil maiores est saepe amet cum iste odio vel voluptatem dignissimos! Quo soluta illo At cumque voluptates est ratione harum vel inventore impedit. Et sapiente quisquam eos aperiam culpa et iusto nulla sed dolore consequatur eum laborum exercitationem rem laborum suscipit! 33 modi ipsum sit neque eius et quaerat atque est tempore facilis sit tenetur ipsa At minus doloribus eum placeat esse. Eum earum velit sit excepturi fugiat nam assumenda officia. Nam pariatur voluptas et itaque corporis ut quia dolorum aut adipisci minus et voluptatem assumenda et corporis dolorum sit aliquid maxime. Ut impedit accusantium aut voluptas nemo qui repellat omnis?",
                    softWrap: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
