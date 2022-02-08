import 'package:flutter/material.dart';
import 'package:flutter_watermelon/pages/main_page.dart';
import 'package:google_fonts/google_fonts.dart';





void main() {
  runApp(WatermelonApp());
}

class WatermelonApp extends StatelessWidget {
  const WatermelonApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.fredokaOneTextTheme (    //  monotonTextTheme permanentMarkerTextTheme
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
