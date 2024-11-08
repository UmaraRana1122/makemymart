import 'package:flutter/material.dart';
import 'package:makemymart/Utils/app_colors.dart';
import 'package:makemymart/Widgets/text_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget orderContainerWidget(
    BuildContext context,
    String imagePath,
    String productName,
    String colorLabel,
    String colorValue,
    String sizeLabel,
    String sizeValue,
    String price) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 14),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            imagePath,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textWidget(
                productName,
                color: AppTheme.colorNaturalBlack,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
              Text.rich(
                TextSpan(
                  text: colorLabel,
                  style: TextStyle(
                    color: AppTheme.colorNaturalBlack,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  children: [
                    TextSpan(
                      text: " $colorValue",
                      style: TextStyle(
                        color: AppTheme.colorGrey,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Text.rich(
                TextSpan(
                  text: sizeLabel,
                  style: TextStyle(
                    color: AppTheme.colorNaturalBlack,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  children: [
                    TextSpan(
                      text: " $sizeValue",
                      style: TextStyle(
                        color: AppTheme.colorGrey,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              textWidget(
                price,
                color: AppTheme.colorNaturalBlack,
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // Delete Icon
            GestureDetector(
              onTap: () {},
              child: Image.asset(
                "assets/icons/deletecon.png",
                height: 2.h,
                color: Colors.purple,
              ),
            ),
            SizedBox(height: 3.h),

            Container(
              height: 36,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      // Handle quantity decrease
                    },
                    icon: Icon(Icons.remove, color: Colors.grey),
                    iconSize: 16,
                  ),
                  Text(
                    '1',
                    style: TextStyle(fontSize: 14.sp),
                  ),
                  IconButton(
                    onPressed: () {
                      // Handle quantity increase
                    },
                    icon: Icon(Icons.add, color: Colors.grey),
                    iconSize: 16,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
