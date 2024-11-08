import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:makemymart/Utils/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class ProductRow extends StatelessWidget {
  final String imagePath;
  final String title;
  final String color;
  final String price;
  final double imageHeight;

  ProductRow({
    required this.imagePath,
    required this.title,
    required this.color,
    required this.price,
    this.imageHeight = 5.0, // Default height 5.h (sizer)
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imagePath,
          height: imageHeight.h,
        ),
        SizedBox(
          width: 3.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textWidget(title, fontSize: 14.sp),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Color: ',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  TextSpan(
                    text: color,
                    style: GoogleFonts.poppins(
                        color: AppTheme.colorGrey,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
        Spacer(),
        textWidget(
          price,
          fontSize: 14.sp,
          color: AppTheme.colorGrey,
        ),
      ],
    );
  }

  // Reusable text widget for the title and price
  Widget textWidget(String text,
      {required double fontSize, Color color = Colors.black}) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        color: color,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
