import 'package:ecommerce/Core/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Fonts {
  static TextStyle splashText = GoogleFonts.adamina(
      color: kPrimary, fontWeight: FontWeight.bold, fontSize: 25);

  static TextStyle splashText2 = GoogleFonts.adamina(
      color: kPrimary2, fontWeight: FontWeight.bold, fontSize: 30);

  static TextStyle splashButtonText = GoogleFonts.adamina(
      color: kveryWhite, fontWeight: FontWeight.bold, fontSize: 17);
  static TextStyle onBoardingText = GoogleFonts.adamina(
      color: kPrimary, fontWeight: FontWeight.bold, fontSize: 15);
  static TextStyle title = GoogleFonts.adamina(
      color: kPrimary, fontWeight: FontWeight.bold, fontSize: 18);

  static TextStyle socialButtonsText = GoogleFonts.notoSansOlChiki(
      fontWeight: FontWeight.w500, fontSize: 14, color: kGrey);
  static TextStyle loginWithText =
      const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: kGrey);

  static TextStyle customTextFieldText = GoogleFonts.notoSansOlChiki(
      fontWeight: FontWeight.bold, fontSize: 15, color: kGrey);
  static TextStyle customText = GoogleFonts.notoSansOlChiki(
      fontWeight: FontWeight.bold, fontSize: 16, color: kGrey);
}
