import 'package:flutter/material.dart';
import 'package:makemymart/Utils/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
Widget buildContainer(BuildContext context, String imagePath, String text) {
  return Container(
    width: 150,
    margin: EdgeInsets.symmetric(horizontal: 8.0),
    decoration: BoxDecoration(
      color: AppTheme.colorWhite,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(
        color: AppTheme.primaryColor
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 95,
          ),
          SizedBox(
            height: 1.h,
          ),
          Text(
            text,
            style: TextStyle(color: AppTheme.colorBlack,
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ),
  );
}
