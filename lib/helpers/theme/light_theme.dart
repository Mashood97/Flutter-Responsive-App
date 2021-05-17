import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals_app_responsive/helpers/constant/constant.dart';
import 'package:meals_app_responsive/helpers/responsive/screen_type_layout.dart';

class Themes {
  Themes._();
  static ThemeData getTheme(BuildContext context) {
    final kTheme = ThemeData(
      primarySwatch: Colors.deepOrange,
      accentColor: Colors.amber,
      canvasColor: kCanvasColor,
      textTheme: ThemeData.light().textTheme.copyWith(
            headline6: GoogleFonts.raleway(
              color: kLightThemeTextColor,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            headline5: GoogleFonts.raleway(
              color: kLightThemeTextColor,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            headline4: GoogleFonts.raleway(
              color: kLightThemeTextColor,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
    );
    return kTheme;
  }
}
