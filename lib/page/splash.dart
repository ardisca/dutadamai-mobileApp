import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_application_1/page/navbar.dart';
import 'package:page_transition/page_transition.dart';

class splashscreen extends StatelessWidget {
  const splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage("asset/bg.png"),
                fit: BoxFit.cover,
              )),
          child: AnimatedSplashScreen(
            duration: 5500,
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Colors.transparent,
            splashIconSize: double.infinity,
            splash: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 100,
                    width: 100,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("asset/profil.png"))),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Aplikasi Damai",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "Dipersembahkan Oleh",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.5,
                  ),
                ),
                Text(
                  "Duta Damai Jawa Timur",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.5,
                  ),
                )
              ],
            ),
            nextScreen: navbarpage(),
          ),
        ),
      ),
    );
  }
}

LinearGradient LGradient() {
  return LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[
      Color(0xff007bff),
      Color(0xff17a2b8),
      Color(0xff20c997),
    ], // Gradient from https://learnui.design/tools/gradient-generator.html
    tileMode: TileMode.mirror,
  );
}
