import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:makemymart/Utils/app_colors.dart';
import 'package:makemymart/Widgets/text_widget.dart';

class InfoDisplayWidget extends StatelessWidget {
 
  final String imagePath;
  final String subtitle;
  final String description;
  final Color descriptionColor;

  const InfoDisplayWidget({
    Key? key,
    
    required this.imagePath,
    required this.subtitle,
    required this.description,
    this.descriptionColor = AppTheme.colorGrey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      

        // Image
        Image.asset(
          imagePath,
          height: 12.h,
        ),
        SizedBox(height: 2.h),

        // Subtitle
        textWidget(
          subtitle,
          fontSize: 15.sp,
          fontWeight: FontWeight.w400,
        ),

        // Description
        textWidget(
          description,
          textAlign: TextAlign.center,
          fontSize: 15.sp,
          fontWeight: FontWeight.w400,
          color: descriptionColor,
        ),
      ],
    );
  }
}
