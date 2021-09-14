import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:chat/screens/home_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          backgroundColor: Color(0XFFEBEBEB),
          primaryColor: Colors.deepOrange[800],
          accentColor: Colors.deepOrangeAccent,
          textTheme: TextTheme(
            headline1: GoogleFonts.lobster(
              fontSize: 22,
              color: Colors.white,
            ),
            headline6: GoogleFonts.lato(
              fontSize: 18,
              color: Colors.white,
            ),
            bodyText1: GoogleFonts.lato(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          iconTheme: IconThemeData(
            size: 23.0,
            color: Colors.white,
          ),
          accentIconTheme: IconThemeData(
            size: 23.0,
            color: Colors.deepOrange[800],
          )),
      home: HomeScreen(),
    );
  }
}
