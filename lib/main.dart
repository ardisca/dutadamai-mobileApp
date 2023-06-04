import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/Artikel/artikel_page.dart';
import 'package:flutter_application_1/page/List/list_page.dart';
import 'package:flutter_application_1/page/Thems/thema.dart';
import 'package:flutter_application_1/page/splash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

void main() {
  runApp(FirstPage());
}

class FirstPage extends StatelessWidget {
  final ThemeController _themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    final lightTheme = ThemeData.light().copyWith(
      textTheme: GoogleFonts.quicksandTextTheme(),
    );

    return GetMaterialApp(
      //title: 'Dark Mode Example',
      theme: lightTheme,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: splashscreen(),
    );
  }
}
