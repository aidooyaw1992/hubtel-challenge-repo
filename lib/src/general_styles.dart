import 'package:flutter/material.dart';

abstract class GenColors {
  static const Color grey = Color(0xffE6EAED);
  static const Color darkGrey = Color(0xff9CABB8);
  static const Color ash = Color(0xffCBCBCB);
  static const Color lightRed = Color(0xffFDB0AC);
  static const Color crimson = Color(0xff99231D);


  static const Color green = Color(0xff70E083);
  static const Color lime = Color(0xffDBF7E0);
  static const Color teal = Color(0xffCCF3EF);

}

abstract class GenAssetSvgImages {
  static const String calendar = "assets/images/calendar.svg";
  static const String favorite = "assets/images/favorite.svg";
  static const String money = "assets/images/money.svg";
  static const String history = "assets/images/history.svg";
  static const String home = "assets/images/home.svg";
  static const String person = "assets/images/person.svg";
  static const String close = "assets/images/close_icon.svg";
  static const String search = "assets/images/search.svg";
  static const String success = "assets/images/success.svg";
  static const String settings = "assets/images/settings.svg";

}

abstract class GenAssetImages {
  static const String momo = "assets/images/MTN Mobile Money.png";
  static const String absa = "assets/images/absa.png";
}

abstract class GenTextStyles {
  static const TextStyle extraBold_10px = TextStyle(
      fontFamily: "Nunito Sans",
      color: Color(0xff9CABB8),
      fontWeight: FontWeight.bold,
      fontSize: 10);

  static const TextStyle extraBold_20px = TextStyle(
    fontFamily: "Nunito Sans",
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );

  static const TextStyle regular_14px = TextStyle(
    fontFamily: "Nunito Sans",
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontSize: 20,
  );
}
