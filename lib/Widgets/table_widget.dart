import 'package:flutter/material.dart';
import 'package:makemymart/Utils/app_colors.dart';
import 'package:makemymart/Widgets/text_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget tableWidget(String text, String text1) {
  return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textWidget(text,
              fontFamily: AppTheme.fontPrimary,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: AppTheme.colorGrey),
          textWidget(text1,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: AppTheme.colorBlack),
        ],
      ));
}
