import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


import '../utils/dimens.dart';
import 'colors.dart';

TextStyle get titleStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: Dimens.font16,
      fontWeight: FontWeight.bold,
      color: MyColor.black,
    ),
  );
}

TextStyle get textStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: Dimens.font14,
      color: MyColor.black,
    ),
  );
}

TextStyle get descriptionStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: Dimens.font12,
      color: MyColor.black,
    ),
  );
}

TextStyle get gowNumber {
  return GoogleFonts.alata(
    textStyle: TextStyle(
      fontSize: Dimens.font12 * 3,
      color: MyColor.black,
      fontFamily: "Fe-Font",
    ),
  );
}



TextStyle get h1Style {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: Dimens.font20,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  );
}

TextStyle get hintStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: Dimens.font16,
      fontWeight: FontWeight.normal,
      color: Get.isDarkMode ? Colors.grey[200] : Colors.grey,
    ),
  );
}
