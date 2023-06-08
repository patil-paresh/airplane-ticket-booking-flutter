import 'package:flutter/material.dart';

Color primary = const Color.fromARGB(255, 137, 168, 239);

class Style {
  static Color primaryColor = primary;
  static Color bgColor = const Color.fromARGB(255, 223, 218, 240);
  static Color textColor = const Color.fromARGB(255, 51, 51, 51);
  static Color blockColor = const Color.fromARGB(255, 195, 51, 96);
  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle1 =
      TextStyle(fontSize: 26, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 =
      TextStyle(fontSize: 21, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3 =
      TextStyle(fontSize: 17, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}
