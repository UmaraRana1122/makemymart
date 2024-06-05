import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:makemymart/Utils/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget textWidget(
  String text, {
  double? fontSize,
  Color? color,
  FontWeight? fontWeight,
  TextDecoration? decoration,
  TextAlign? textAlign,
  double? letterSpacing,
  double? height,
  Color? decorationColor,
  double? decorationWidth,
  int? maxline,
  String? fontFamily, // Add this parameter
}) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Text(
      text,
      maxLines: maxline,
      textAlign: textAlign ?? TextAlign.start,
      style: GoogleFonts.getFont(
        fontFamily ??
            AppTheme
                .fontPrimary, // Use the passed font family or fallback to default
        height: height,
        color: color ?? AppTheme.colorBlack,
        fontSize: fontSize ?? 17.sp,
        fontWeight: fontWeight ?? FontWeight.w500,
        decoration: decoration ?? TextDecoration.none,
        decorationColor: decorationColor ?? AppTheme.colorWhite,
        decorationThickness: decorationWidth ?? 1.0,
        letterSpacing: letterSpacing,
      ),
    ),
  );
}
