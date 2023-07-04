import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/page/List/list_page.dart';
//import 'package:flutter_application_1/page/Thems/thema.dart';
import 'package:flutter_application_1/page/splash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'dart:io';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();

  // ByteData data =
  //     await PlatformAssetBundle().load('asset/ca/lets-encrypt-r3.pem');
  // SecurityContext.defaultContext
  //     .setTrustedCertificatesBytes(data.buffer.asUint8List());
  HttpOverrides.global = MyHttpOverrides();
  runApp(FirstPage());
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class FirstPage extends StatelessWidget {
  //final ThemeController _themeController = Get.put(ThemeController());

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
        //home: splashscreen(),
        home: splashscreen());
  }
}
