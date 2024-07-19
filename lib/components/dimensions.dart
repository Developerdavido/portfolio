import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Dimensions {
  // horizontal spacing
  static SizedBox horizontalSpacing({space = 16}) => SizedBox(
        width: space,
      );
  static SizedBox verticalSpacing({space = 16}) => SizedBox(
        height: space,
      );

  //Textstyles

  static heading({double? fontSize, FontWeight? fontWeight, Color? color}) {
    return GoogleFonts.openSans(
      color: color ?? Colors.black54,
      fontSize: fontSize ?? 34.sp,
      fontWeight: fontWeight ?? FontWeight.bold,
    );
  }

  static regular({double? fontSize, FontWeight? fontWeight, Color? color,double? letterSpacing}) {
    return GoogleFonts.openSans(
      color: color ?? Colors.black54,
      fontSize: fontSize ?? 21.sp,
      letterSpacing: letterSpacing,
      fontWeight: fontWeight ?? FontWeight.normal,
    );
  }

  static caption({double? fontSize, FontWeight? fontWeight, Color? color, double? letterSpacing}) {
    return GoogleFonts.openSans(
      color: color ?? Colors.grey,
      fontSize: fontSize ?? 16.sp,
      letterSpacing: letterSpacing,
      fontWeight: fontWeight ?? FontWeight.bold,
    );
  }

  bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 600;
  }
}
