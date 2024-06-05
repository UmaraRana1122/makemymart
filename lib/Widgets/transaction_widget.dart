import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget transactionWidget(String image, double width) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: width,
      decoration: BoxDecoration(
          color: Color(0xff999999), borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          image,
          height: 2.h,
        ),
      ),
    ),
  );
}
