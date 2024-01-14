import 'package:flashcard_app/style/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final appTheme = ThemeData(
  primaryColor: kBlue,
  textTheme: TextTheme(
    bodyMedium: TextStyle(
      color:Colors.white,
      fontSize: 18,
      fontFamily: GoogleFonts.spaceGrotesk().fontFamily
    )
  ),

  appBarTheme: AppBarTheme(
    titleTextStyle: TextStyle(
      fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
      fontSize:20,
      fontWeight:FontWeight.bold,    
    ),
    color:kBlue,
  ),
  scaffoldBackgroundColor: kWhite,
);