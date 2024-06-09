import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:init_get_cli_setup/app/constant/app_colors.dart';

class AppTextStyle {
  static TextStyle robotoBlackW400Size16 = GoogleFonts.roboto(
    textStyle: const TextStyle(
        color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),
  );
  static TextStyle robotoWhiteW400Size16 = GoogleFonts.roboto(
    textStyle: const TextStyle(
        color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
  );

  static TextStyle robotoHintTextW400Size17 = GoogleFonts.roboto(
    textStyle: const TextStyle(
        color: AppColors.hintTextColor,
        fontSize: 17,
        fontWeight: FontWeight.w400),
  );




}