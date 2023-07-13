import 'package:flutter/material.dart';

abstract class GenColors {
  static const Color grey = Color(0xffE6EAED);
  static const Color darkGrey = Color(0xff9CABB8);
}

abstract class AssetSvgImages {
  static const String calendar = "assets/images/calendar.svg";
  static const String favorite = "assets/images/favorite.svg";
  static const String history = "assets/images/history.svg";
  // static const String calendar = "assets/images/calendar.svg";
}

abstract class GenTextStyles {
  static const TextStyle extraBold_10px = TextStyle(
      fontFamily: "Nunito Sans",
      color: Color(0xff9CABB8),
      letterSpacing: 14,
      fontWeight: FontWeight.bold,
      fontSize: 10);

  static const TextStyle extraBold_20px = TextStyle(
      fontFamily: "Nunito Sans",
      color: Colors.black,
      letterSpacing: 14,
      fontWeight: FontWeight.bold,
      fontSize: 20,
      );
  static const TextStyle regular_14px = TextStyle(
      fontFamily: "Nunito Sans",
      color: Colors.black,
      letterSpacing: 14,
      fontWeight: FontWeight.w400,
      fontSize: 20,
      );
}
