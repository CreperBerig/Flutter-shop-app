import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final app_theme = ThemeData(
  //text
  textTheme: TextTheme(
    labelSmall: GoogleFonts.inter(
      textStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Color.fromRGBO(126, 126, 143, 1),
      )
    ),
    bodyMedium: GoogleFonts.inter(
      textStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: Color.fromRGBO(226, 226, 234, 1),
      )
    ),
    bodyLarge: GoogleFonts.inter(
      textStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: Color.fromRGBO(226, 226, 234, 1),
      ),
    ),
    bodySmall: GoogleFonts.inter(
      textStyle: TextStyle(
        fontSize: 12,
        color: Color.fromRGBO(126, 126, 143, 1),
      ),
    ),
  ),

  //list tile
  listTileTheme: ListTileThemeData(
    iconColor: Color.fromRGBO(226, 226, 234, 1),
    tileColor: Color.fromRGBO(38, 38, 49, 0.4),
  ),

  //widgets
  //prymary
  primarySwatch: Colors.deepPurple,
  //app bar
  appBarTheme: AppBarTheme(
    backgroundColor: Color.fromRGBO(15, 15, 19, 0.7),
    foregroundColor: Color.fromRGBO(226, 226, 234, 1),
    titleTextStyle: GoogleFonts.inter(
      textStyle: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Color.fromRGBO(226, 226, 234, 1),
      )
    ),
  ),
  //scaffold
  scaffoldBackgroundColor: Color.fromRGBO(15, 15, 19, 1),
  //divider
  dividerColor: Color.fromRGBO(126, 126, 143, 0.5),
);