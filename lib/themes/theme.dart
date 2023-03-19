import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class flutter_language_templateTheme {
  static const Color primaryTextColor = Color(0xFF003B64);
  static const Color secondaryTextColor = Color(0xFF95afc0);
  static const Color introPageBgColor = Color(0xFFd7942d);

  static const Color primaryBgColor = Color(0xFF33ab5f); //0xFF30336b
  static const Color secondaryBgColor = Color(0xFF003B64);

  static const Color primaryColorLight = Colors.blue;
  static const Color googleRed = Color(0xFFA01523);
  static const Color white = Color(0xFFFFFFFF);
  static const Color background = Color(0xFFF2F3F8);
  static const Color nearlyWhite = Color(0xFFFAFAFA);
  static const Color nearlyDarkBlue = Color(0xFF2633C5);
  static const Color lightBg = Color(0x101A53A3);
  static const Color nearlyBlue = Color(0xFF00B6F0);
  static const Color nearlyBlack = Color(0xFF213333);
  static const Color grey = Color(0xFF3A5160);
  static const Color dark_grey = Color(0xFF313A44);

  static const Color darkText = Color(0xFF253840);
  static const Color darkerText = Color(0xFF17262A);
  static const Color lightText = Color(0xFF4A6572);
  static const Color deactivatedText = Color(0xFF767676);
  static const Color dismissibleBackground = Color(0xFF364A54);
  static const Color spacer = Color(0xFFF2F2F2);
  static const String fontName = 'Poppins';
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
  );
}
