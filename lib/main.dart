import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:chat/screens/home_screen.dart';
import 'package:chat/screens/chat_screen.dart';
import 'package:chat/screens/settings_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          backgroundColor: Color(0XFFEBEBEB),
          primaryColor: Colors.indigo[600],
          accentColor: Colors.indigoAccent[400],
          textTheme: TextTheme(
              headline1: GoogleFonts.lobster(
                fontSize: 22,
                color: Colors.white,
              ),
              headline3: GoogleFonts.lato(
                fontSize: 20,
                color: Colors.white,
              ),
              headline4: GoogleFonts.lato(
                fontSize: 16,
                color: Colors.indigo[600],
                fontWeight: FontWeight.bold,
              ),
              headline5: GoogleFonts.lato(
                fontSize: 16,
                color: Colors.indigo[600],
              ),
              headline6: GoogleFonts.lato(
                fontSize: 18,
                color: Colors.white,
              ),
              bodyText1: GoogleFonts.lato(
                fontSize: 15,
                color: Colors.white,
              ),
              bodyText2: GoogleFonts.lato(
                fontSize: 15,
                color: Colors.grey[700],
              )),
          iconTheme: IconThemeData(
            size: 23.0,
            color: Colors.white,
          ),
          accentIconTheme: IconThemeData(
            size: 23.0,
            color: Colors.indigo[600],
          )),
      routes: {
        '/': (_) => HomeScreen(),
        'chat/': (_) => ChatScreen(),
        'settings/': (_) => SettingsScreen(),
      },
    );
  }
}
