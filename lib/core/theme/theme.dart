import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salegates/core/theme/colors.dart';

class AppTheme {
  static themeData() {
    return ThemeData(
      // fontFamily: GoogleFonts.cairo().fontFamily,
      textTheme: GoogleFonts.cairoTextTheme(),

      primaryColor: AppColors.primary,
    );
  }

  static TextStyle text18BlackWeight700() {
    return TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.w700,
      color: AppColors.textColor,
    );
  }

  static TextStyle textButton18WiteWeight600() {
    return TextStyle(
      color: Colors.white,
      fontSize: 18.sp,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle textBody16black39weight400() {
    return TextStyle(
      color: AppColors.textColorBody39,
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle textBodyprimaryWeight700() {
    return TextStyle(
      color: AppColors.primary,
      fontSize: 16.sp,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle textBodyWhite15Weight700() {
    return TextStyle(
      color: Colors.white,
      fontSize: 15.sp,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle textorange14Weight500() {
    return TextStyle(
      color: AppColors.textOrangeColor,
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      height: 1,
      decorationColor: AppColors.textOrangeColor,
      decoration: TextDecoration.underline,
    );
  }

  static TextStyle text13Weigh600Black() {
    return TextStyle(
      color: Color(0xFF030103),
      fontSize: 14.sp,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle text12grayWeight400() {
    return TextStyle(
      color: AppColors.borderColor,
      fontSize: 12.sp,
      fontFamily: 'Montserrat-Arabic',
      fontWeight: FontWeight.w400,
      height: 0.08,
    );
  }
}
