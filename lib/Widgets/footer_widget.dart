import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:makemymart/Utils/app_colors.dart';
import 'package:makemymart/Widgets/logo_widget.dart';
import 'package:makemymart/Widgets/text_widget.dart';
import 'package:makemymart/Widgets/transaction_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget footerWidget(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.999,
    decoration: BoxDecoration(color: Color(0xff333333)),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Logo",
            textAlign: TextAlign.start,
            style: GoogleFonts.sansitaSwashed(
              color: Colors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          textWidget(
              "Morbi cursus porttitor enim lobortis molestie. Duis gravida turpis dui, eget bibendum magna congue nec.",
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: AppTheme.colorGrey),
          SizedBox(
            height: 2.h,
          ),
          Row(
            children: [
              logoWidget(
                "(219) 555-0114",
              ),
              SizedBox(
                width: 15,
              ),
              textWidget("or",
                  color: AppTheme.colorGrey,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w500),
              SizedBox(
                width: 15,
              ),
              logoWidget(
                "Doman@mail.com",
              ),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textWidget("Helps",
                      color: AppTheme.colorWhite,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500),
                  textWidget("Contact",
                      color: AppTheme.colorGrey,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500),
                  textWidget("Faqs",
                      color: AppTheme.colorGrey,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500),
                  textWidget("Terms & Condition",
                      color: AppTheme.colorGrey,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500),
                  textWidget("Privacy Policy",
                      color: AppTheme.colorGrey,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textWidget("Pages",
                      color: AppTheme.colorWhite,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500),
                  textWidget("About",
                      color: AppTheme.colorGrey,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500),
                  textWidget("Contact",
                      color: AppTheme.colorGrey,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500),
                  textWidget("Product",
                      color: AppTheme.colorGrey,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500),
                  textWidget("Track Order",
                      color: AppTheme.colorGrey,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          textWidget("Categories",
              color: AppTheme.colorWhite,
              fontSize: 17.sp,
              fontWeight: FontWeight.w500),
          textWidget("Fruit & Vegetables",
              color: AppTheme.colorGrey,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500),
          textWidget("Meat & Fish",
              color: AppTheme.colorGrey,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500),
          textWidget("Bread & Bakery",
              color: AppTheme.colorGrey,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500),
          textWidget("Beauty & Health",
              color: AppTheme.colorGrey,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500),
          SizedBox(
            height: 2.h,
          ),
          Align(
            alignment: Alignment.center,
            child: textWidget(
                textAlign: TextAlign.center,
                "“Website Name” eCommerce © 2021. \nAll Rights Reserved",
                color: AppTheme.colorGrey,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            children: [
              Spacer(),
              transactionWidget("assets/logo/visa.png", 15.w),
              transactionWidget("assets/logo/master.png", 15.w),
              transactionWidget("assets/logo/visa.png", 15.w),
              Spacer(),
            ],
          )
        ],
      ),
    ),
  );
}
