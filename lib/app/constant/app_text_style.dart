import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle{
  static TextStyle ptSansGreyF13W400 = GoogleFonts.ptSans(
    textStyle: const TextStyle(
        color: Color(0xFF5D5D5D), fontSize: 13, fontWeight: FontWeight.w400),
  );
  static TextStyle ptSansNavyBlueF20W700 = GoogleFonts.ptSans(
    textStyle: const TextStyle(
        color: Color(0xFF061237), fontSize: 20, fontWeight: FontWeight.w700),
  );
}