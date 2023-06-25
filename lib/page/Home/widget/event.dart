import 'package:flutter/material.dart';

class event extends StatelessWidget {
  const event({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          width: double.infinity,
          //color: Colors.amber,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(25),
                          child: Text(
                            "Social Media",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                        GridView.count(
                          crossAxisCount: 3, // Jumlah kolom
                          shrinkWrap:
                              true, // Menyesuaikan ukuran dengan jumlah item
                          children: [
                            _buildSocialMediaCard(
                              icon: Icons.camera,
                              title: 'Instagram',
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                            _buildSocialMediaCard(
                              icon: Icons.chat,
                              title: 'Twitter',
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                            _buildSocialMediaCard(
                              icon: Icons.video_call_rounded,
                              title: 'YouTube',
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                            _buildSocialMediaCard(
                              icon: Icons.tiktok,
                              title: 'TikTok',
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                            _buildSocialMediaCard(
                              icon: Icons.facebook,
                              title: 'Facebook',
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                            _buildSocialMediaCard(
                              icon: Icons.web,
                              title: 'Website',
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: Container(
              width: 350,
              height: 100,
              decoration: BoxDecoration(
                  //color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  image:
                      DecorationImage(image: AssetImage("asset/banner.png"))),
              alignment: Alignment.center,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSocialMediaCard({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 50,
            child: Icon(icon),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          SizedBox(height: 8),
          Text(title),
        ],
      ),
    );
  }
}
