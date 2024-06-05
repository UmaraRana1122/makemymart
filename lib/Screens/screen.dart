import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makemymart/Utils/app_colors.dart';

import 'package:makemymart/Widgets/order_widget.dart';
import 'package:makemymart/Widgets/progress_tracker.dart';
import 'package:makemymart/Widgets/text_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({super.key});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  final List<String> titles = [
    'Order Placed',
    'In Progress',
    'Shipped',
    'Delivered'
  ];
  int curStep = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colorWhite,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xfff3ebff),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/icons/cart.png",
                          height: 25,
                        ),
                      ),
                    ),
                    Image.asset(
                      "assets/logo/logo.png",
                      height: 36,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppTheme.colorLightWhite,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          "assets/icons/more.png",
                          height: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                textWidget("Order Details",
                    color: AppTheme.colorBlack1, fontSize: 19.sp),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: AppTheme.colorLightWhite,
                      borderRadius: BorderRadius.circular(11)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textWidget("Order no: #123456789",
                            color: AppTheme.colorNaturalBlack,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500),
                        textWidget("Placed On  2 June 2023 2:40 PM ",
                            color: AppTheme.colorGrey,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text.rich(
                          TextSpan(
                              text: 'Total : ',
                              style: TextStyle(
                                  color: AppTheme.colorGrey,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700),
                              children: [
                                TextSpan(
                                  text: '\$143.00',
                                  style: TextStyle(
                                      color: AppTheme.colorNaturalBlack,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700),
                                )
                              ]),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                StepProgressView(
                    width: MediaQuery.of(context).size.width,
                    curStep: curStep,
                    color: AppTheme.primaryColor,
                    titles: titles),
                SizedBox(
                  height: 3.h,
                ),
                Container(
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: AppTheme.colorLightWhite,
                      borderRadius: BorderRadius.circular(11)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        textWidget("8 June 2023 3:40 PM   ",
                            color: AppTheme.colorGrey,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500),
                        textWidget(
                            textAlign: TextAlign.center,
                            "Your order has been successfully verified.",
                            color: AppTheme.colorNaturalBlack,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                orderWidget(
                    context,
                    "assets/images/ordergirl.png",
                    "Printed White Coat",
                    " Color :",
                    "White",
                    " Qty :",
                    "1",
                    "\$29.00"),
                SizedBox(
                  height: 2.h,
                ),
                orderWidget(
                    context,
                    "assets/images/orderboy.png",
                    "Printed White Coat",
                    " Color :",
                    "White",
                    " Qty :",
                    "1",
                    "\$30.00"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
