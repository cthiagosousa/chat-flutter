import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:chat/screens/home_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat",
      theme: ThemeData(
        backgroundColor: Color(0XFFEBEBEB),
        
        textTheme: TextTheme(
          headline1: GoogleFonts.lato(
            fontSize: 38,
            color: Colors.white
          )
        )
      ),

      home: HomeScreen(),
    );
  }
}
