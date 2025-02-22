import 'package:bookia_task/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static final TextStyle heading =
      GoogleFonts.playfairDisplay(fontSize: 30, fontWeight: FontWeight.w700);

  static final TextStyle hint = GoogleFonts.playfairDisplay(
    fontSize: 16,
    color: Colors.grey,
  );

  static final TextStyle smallText =
      GoogleFonts.playfairDisplay(fontSize: 15, color: AppColors.greyColor);

  static final TextStyle question = GoogleFonts.playfairDisplay(
      fontSize: 17, color: AppColors.black, fontWeight: FontWeight.bold);

  static final TextStyle primaryQuestion = GoogleFonts.playfairDisplay(
      fontSize: 17, color: AppColors.primaryColor, fontWeight: FontWeight.bold);

  static final TextStyle subHeading = GoogleFonts.playfairDisplay(
      fontSize: 15, color: AppColors.greyColor, fontWeight: FontWeight.bold);
}
