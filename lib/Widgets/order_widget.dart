import 'package:flutter/material.dart';
import 'package:makemymart/Utils/app_colors.dart';

import 'package:makemymart/Widgets/text_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget orderWidget(BuildContext context, String isImage, String text,
    String text1, String text2, String text3, String text4, String text5) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.95,
    decoration: BoxDecoration(
        color: AppTheme.colorLightWhite,
        borderRadius: BorderRadius.circular(11)),
    child: Padding(
      padding: const EdgeInsets.all(14.0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset(
              isImage,
              height: 129,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textWidget(
                  textAlign: TextAlign.center,
                  text,
                  color: AppTheme.colorNaturalBlack,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600),
              Text.rich(
                TextSpan(
                    text: text1,
                    style: TextStyle(
                        color: AppTheme.colorNaturalBlack,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700),
                    children: [
                      TextSpan(
                        text: text2,
                        style: TextStyle(
                            color: AppTheme.colorGrey,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700),
                      )
                    ]),
              ),
              Text.rich(
                TextSpan(
                    text: text3,
                    style: TextStyle(
                        color: AppTheme.colorNaturalBlack,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700),
                    children: [
                      TextSpan(
                        text: text4,
                        style: TextStyle(
                            color: AppTheme.colorGrey,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700),
                      )
                    ]),
              ),
              textWidget(
                  textAlign: TextAlign.center,
                  text5,
                  color: AppTheme.colorNaturalBlack,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w600),
            ],
          )
        ],
      ),
    ),
  );
}
