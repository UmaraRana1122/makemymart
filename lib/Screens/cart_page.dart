import 'package:flutter/material.dart';
import 'package:makemymart/Utils/app_colors.dart';
import 'package:makemymart/Widgets/footer_widget.dart';
import 'package:makemymart/Widgets/order_container_widget.dart';
import 'package:makemymart/Widgets/text_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sticky_footer_scrollview/sticky_footer_scrollview.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
          bottom: false,

          child: StickyFooterScrollView(
              footer: Container(
                width: MediaQuery.of(context).size.width * 0.999,
                color: AppTheme.colorLightWhite,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 2.h,
                          ),
                          textWidget("Discount  Codes",
                              fontSize: 17.sp, fontWeight: FontWeight.w500),
                          textWidget(
                              textAlign: TextAlign.center,
                              "Enter your coupon code if you have one",
                              fontSize: 13.sp,
                              color: AppTheme.colorGrey,
                              fontWeight: FontWeight.w400),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: AppTheme.colorGreyLight),
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
                                          horizontal: 12, vertical: 11),
                                      child: Text(
                                        'Apply Coupon',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Container(
                            height: 5.h,
                            width: 45.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border:
                                    Border.all(color: AppTheme.primaryColor)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  textWidget("Continue Shopping",
                                      fontSize: 14.sp),
                                  Image.asset(
                                    "assets/icons/arrw.png",
                                    height: 1.h,
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              textWidget("Sub Total",
                                  fontSize: 16.sp, fontWeight: FontWeight.w400),
                              SizedBox(
                                width: 2.w,
                              ),
                              textWidget("\$513.00",
                                  fontSize: 16.sp, fontWeight: FontWeight.w400)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              textWidget("Shipping",
                                  fontSize: 16.sp, fontWeight: FontWeight.w400),
                              SizedBox(
                                width: 2.w,
                              ),
                              textWidget("\$5.00",
                                  fontSize: 16.sp, fontWeight: FontWeight.w400)
                            ],
                          ),
                          SizedBox(
                            height: .5.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              textWidget("Grand Total",
                                  fontSize: 16.sp, fontWeight: FontWeight.w600),
                              SizedBox(
                                width: 2.w,
                              ),
                              textWidget("\$518.00",
                                  fontSize: 16.sp, fontWeight: FontWeight.w600)
                            ],
                          ),
                          Divider(height: 32, thickness: 1),
                          SizedBox(
                            height: 1.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 5.h,
                                width: 45.w,
                                decoration: BoxDecoration(
                                  color: AppTheme.primaryColor,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      textWidget("Proceed to Checkout",
                                          fontSize: 14.sp, color: Colors.white),
                                      Image.asset(
                                        "assets/icons/arrw.png",
                                        color: Colors.white,
                                        height: 1.h,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 9.h,
                    ),
                    Center(
                      child: textWidget("Subcribe our Newsletter",
                          fontSize: 17.sp, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Center(
                      child: textWidget(
                          textAlign: TextAlign.center,
                          "Pellentesque eu nibh eget mauris congue mattis \nmattis nec tellus. Phasellus imperdiet elit eu \nmagna.",
                          fontSize: 13.sp,
                          color: AppTheme.colorGrey,
                          fontWeight: FontWeight.w400),
                    ),
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
                      height: 1.h,
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
                return cartWidget(context);
              },
              itemCount: 1)),
    );
  }

  Widget cartWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppTheme.colorLightWhite,
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
          orderContainerWidget(
              context,
              "assets/images/ordergirl.png",
              "Printed White Coat",
              " Color :",
              "White",
              " Size :",
              "M",
              "\$29.00"),
          SizedBox(
            height: 2.h,
          ),
          orderContainerWidget(
              context,
              "assets/images/ordergirl.png",
              "Printed White Coat",
              " Color :",
              "White",
              " Size :",
              "M",
              "\$29.00"),
          SizedBox(
            height: 2.h,
          ),
          orderContainerWidget(
              context,
              "assets/images/ordergirl.png",
              "Printed White Coat",
              " Color :",
              "White",
              " Size :",
              "M",
              "\$29.00"),
        ],
      ),
    );
  }
}
