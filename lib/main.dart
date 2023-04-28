import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'page/Home/home_page.dart';
import './page/Home/home_page.dart';

void main() {
  runApp(FirstPage());
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.quicksandTextTheme()),
      home: home_page(),
    );
  }
}
