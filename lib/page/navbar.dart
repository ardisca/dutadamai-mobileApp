import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/page/Menu/menu_page.dart';
import 'Home/home_page.dart';
import 'Setting/setting_page.dart';
import 'Thems/thema.dart';
import 'Video/video_page.dart';
import 'Member/member_page.dart';
import 'testpages.dart';
import 'package:get/get.dart';

class navbarpage extends StatefulWidget {
  const navbarpage({super.key});

  @override
  State<navbarpage> createState() => _navbarpageState();
}

//Belajar NAVIGATION BAR

class _navbarpageState extends State<navbarpage> {
  final ThemeController _themeController = Get.put(ThemeController());
  late int index;
  List showWidget = [
    home_page(),
    video_page(),
    menu_page(),
    member_page(),
    setting_page()
  ];
  @override
  void initState() {
    index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Brightness brightnessValue =
        MediaQuery.of(context).platformBrightness;
    bool isDark = brightnessValue == Brightness.dark;
    return Scaffold(
      body: showWidget[index],
      bottomNavigationBar: SizedBox(
        height: 75,
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            //selectedItemColor: Colors.blueAccent,
            // backgroundColor: Colors.white,
            // unselectedItemColor: Colors.black,
            currentIndex: index,
            showUnselectedLabels: true,
            onTap: (value) {
              setState(() {
                index = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(isDark
                      ? 'asset/icon/iconHomeDarkMode.png'
                      : 'asset/icon/iconHomeLightMode.png'),
                  //  size: 48.0,
                  //color: Colors.green,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(isDark
                        ? 'asset/icon/iconVideoDarkMode.png'
                        : 'asset/icon/iconVideoLightMode.png')
                    //  size: 48.0,
                    //color: Colors.green,
                    ),
                label: "Video",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(isDark
                        ? 'asset/icon/iconMenuDarkMode.png'
                        : 'asset/icon/iconMenuLightMode.png')
                    //  size: 48.0,
                    //color: Colors.green,
                    ),
                label: "Menu",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(isDark
                        ? 'asset/icon/iconAuthorDarkMode.png'
                        : 'asset/icon/iconAuthorLightMode.png')
                    //  size: 48.0,
                    //color: Colors.green,
                    ),
                label: "Member",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(isDark
                        ? 'asset/icon/iconSettingDarkMode.png'
                        : 'asset/icon/iconSettingLightMode.png')
                    //  size: 48.0,
                    //color: Colors.green,
                    ),
                label: "Setting",
              ),
            ]),
      ),
    );
  }
}
