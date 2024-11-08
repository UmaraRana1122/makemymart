import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makemymart/Utils/app_colors.dart';
import 'package:makemymart/Widgets/footer_widget.dart';

import 'package:makemymart/Widgets/order_widget.dart';
import 'package:makemymart/Widgets/progress_tracker.dart';
import 'package:makemymart/Widgets/text_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sticky_footer_scrollview/sticky_footer_scrollview.dart';

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
          child: StickyFooterScrollView(
              footer: Container(
                width: MediaQuery.of(context).size.width * 0.999,
                color: AppTheme.colorLightWhite,
                child: Column(
                  children: [
                    textWidget("Subcribe our Newsletter",
                        fontSize: 19.sp, fontWeight: FontWeight.w600),
                    SizedBox(
                      height: 1.h,
                    ),
                    textWidget(
                        textAlign: TextAlign.center,
                        "Pellentesque eu nibh eget mauris congue mattis \nmattis nec tellus. Phasellus imperdiet elit eu \nmagna.",
                        fontSize: 15.sp,
                        color: AppTheme.colorGrey,
                        fontWeight: FontWeight.w400),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/logo/fb.png",
                          height: 5.h,
                        ),
                        Image.asset(
                          "assets/logo/twitter.png",
                          height: 5.h,
                        ),
                        Image.asset(
                          "assets/logo/pin.png",
                          height: 5.h,
                        ),
                        Image.asset(
                          "assets/logo/insta.png",
                          height: 5.h,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: AppTheme.colorGreyLight),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: TextFormField(
                          style: const TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontFamily: "QuicksandMedium",
                          ),
                          decoration: InputDecoration(
                            hintText: 'Your email address',
                            hintStyle: TextStyle(
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              color: AppTheme.colorGrey,
                              fontWeight: FontWeight.w400,
                              fontFamily: "QuicksandRegular",
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(
                                color: AppTheme.colorGreyLight,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(
                                color: AppTheme.colorGreyLight,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(
                                color: AppTheme.colorGreyLight,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(
                                color: AppTheme.colorGreyLight,
                              ),
                            ),
                            filled: true,
                            fillColor: Color(0xffffffff),
                            suffixIcon: Container(
                              height: 37.0,
                              decoration: BoxDecoration(
                                color: AppTheme.primaryColor,
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 16),
                                child: Text(
                                  'Subscribe',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    footerWidget(context)
                  ],
                ),
              ),
              itemBuilder: (BuildContext context, int index) {
                return OrderDetailsWidget();
              },
              itemCount: 1)),
    );
  }

  Widget OrderDetailsWidget() {
    return Padding(
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
                "assets/images/ordergirl.png",
                "Printed White Coat",
                " Color :",
                "White",
                " Qty :",
                "1",
                "\$30.00"),
          ],
        ),
      ),
    );
  }
}
