import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:makemymart/Utils/app_colors.dart';
import 'package:makemymart/Widgets/custom_button_widget.dart';
import 'package:makemymart/Widgets/custom_textfeild.dart';
import 'package:makemymart/Widgets/footer_widget.dart';
import 'package:makemymart/Widgets/product_row.dart';
import 'package:makemymart/Widgets/text_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sticky_footer_scrollview/sticky_footer_scrollview.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          bottom: false,
          child: StickyFooterScrollView(
              footer: Container(
                width: MediaQuery.of(context).size.width * 0.999,
                color: AppTheme.colorLightWhite,
                child: Column(
                  children: [
                    SizedBox(
                      height: 2.h,
                    ),
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
                return checkoutWidget();
              },
              itemCount: 1)),
    );
  }

  Widget checkoutWidget() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Row(
              children: [
                Container(
                  height: 2.7.h,
                  width: 1.5.w,
                  decoration: BoxDecoration(
                      color: AppTheme.primaryColor,
                      borderRadius: BorderRadius.circular(8)),
                ),
                SizedBox(
                  width: 10,
                ),
                textWidget("Check Out",
                    fontSize: 18.sp, fontWeight: FontWeight.w600),
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            textWidget("Billing Details and Shipping \naddress.",
                fontSize: 16.sp, fontWeight: FontWeight.w500),
            SizedBox(
              height: 1.h,
            ),
            textWidget("First Name*",
                fontSize: 14.sp, fontWeight: FontWeight.w500),
            SizedBox(
              height: .5.h,
            ),
            CustomTextField(
              fillColor: AppTheme.colorLightWhite,
              borderRadius: 10.0,
              contentPadding: EdgeInsets.all(11),
              controller: TextEditingController(),
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            SizedBox(
              height: 1.h,
            ),
            textWidget("Last Name*",
                fontSize: 14.sp, fontWeight: FontWeight.w500),
            SizedBox(
              height: .5.h,
            ),
            CustomTextField(
              fillColor: AppTheme.colorLightWhite,
              borderRadius: 10.0,
              contentPadding: EdgeInsets.all(11),
              controller: TextEditingController(),
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            SizedBox(
              height: 1.h,
            ),
            textWidget("Country / Region*",
                fontSize: 14.sp, fontWeight: FontWeight.w500),
            SizedBox(
              height: .5.h,
            ),
            CustomTextField(
              fillColor: AppTheme.colorLightWhite,
              borderRadius: 10.0,
              contentPadding: EdgeInsets.all(11),
              controller: TextEditingController(),
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            SizedBox(
              height: 1.h,
            ),
            textWidget("Company Name*",
                fontSize: 14.sp, fontWeight: FontWeight.w500),
            SizedBox(
              height: .5.h,
            ),
            CustomTextField(
              fillColor: AppTheme.colorLightWhite,
              borderRadius: 10.0,
              contentPadding: EdgeInsets.all(11),
              controller: TextEditingController(),
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            SizedBox(
              height: 1.h,
            ),
            textWidget("Street Address*",
                fontSize: 14.sp, fontWeight: FontWeight.w500),
            SizedBox(
              height: .5.h,
            ),
            CustomTextField(
              fillColor: AppTheme.colorLightWhite,
              borderRadius: 10.0,
              contentPadding: EdgeInsets.all(11),
              controller: TextEditingController(),
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            SizedBox(
              height: 1.h,
            ),
            textWidget("Apt, suite, unit",
                fontSize: 14.sp, fontWeight: FontWeight.w500),
            SizedBox(
              height: .5.h,
            ),
            CustomTextField(
              fillColor: AppTheme.colorLightWhite,
              borderRadius: 10.0,
              contentPadding: EdgeInsets.all(11),
              controller: TextEditingController(),
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            SizedBox(
              height: 1.h,
            ),
            textWidget("City*", fontSize: 14.sp, fontWeight: FontWeight.w500),
            SizedBox(
              height: .5.h,
            ),
            CustomTextField(
              fillColor: AppTheme.colorLightWhite,
              borderRadius: 10.0,
              contentPadding: EdgeInsets.all(11),
              controller: TextEditingController(),
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            SizedBox(
              height: 1.h,
            ),
            textWidget("State*", fontSize: 14.sp, fontWeight: FontWeight.w500),
            SizedBox(
              height: .5.h,
            ),
            CustomTextField(
              fillColor: AppTheme.colorLightWhite,
              borderRadius: 10.0,
              contentPadding: EdgeInsets.all(11),
              controller: TextEditingController(),
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            SizedBox(
              height: 1.h,
            ),
            textWidget("Postal Code*",
                fontSize: 14.sp, fontWeight: FontWeight.w500),
            SizedBox(
              height: .5.h,
            ),
            CustomTextField(
              fillColor: AppTheme.colorLightWhite,
              borderRadius: 10.0,
              contentPadding: EdgeInsets.all(11),
              controller: TextEditingController(),
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            SizedBox(
              height: 1.h,
            ),
            textWidget("Phone*", fontSize: 14.sp, fontWeight: FontWeight.w500),
            SizedBox(
              height: .5.h,
            ),
            CustomTextField(
              fillColor: AppTheme.colorLightWhite,
              borderRadius: 10.0,
              contentPadding: EdgeInsets.all(11),
              controller: TextEditingController(),
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
                height: 44,
                width: 190,
                decoration: BoxDecoration(
                  color: AppTheme.primaryColor,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Center(
                  child: textWidget("Continue to delivery",
                      fontSize: 14.sp, color: Colors.white),
                )),
            SizedBox(
              height: 1.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value ?? false;
                    });
                  },
                ),
                textWidget("Save my information for a faster checkout",
                    fontSize: 13.sp,
                    color: AppTheme.colorBlack,
                    fontWeight: FontWeight.w400)
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              // height: 50.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: AppTheme.primaryColor)),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textWidget("Order Summary", fontWeight: FontWeight.w600),
                    SizedBox(
                      height: 1.h,
                    ),
                    Divider(
                      thickness: .5,
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    ProductRow(
                      imagePath: "assets/images/img2.png",
                      title: "Blue Flower Print.",
                      color: "Yellow",
                      price: "\$29.00",
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Divider(
                      thickness: .5,
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    ProductRow(
                      imagePath: "assets/images/img1.png",
                      title: "Levender Hoodie x 2",
                      color: "Levender",
                      price: "\$129.00",
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Divider(
                      thickness: .5,
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    ProductRow(
                      imagePath: "assets/images/product3.png",
                      title: "Black Sweatshirt x 2",
                      color: "Black",
                      price: "\$123.00",
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Divider(
                      thickness: .5,
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Subtotal ',
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(
                                text: ' (3 items)',
                                style: GoogleFonts.poppins(
                                  color: AppTheme.colorGrey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        textWidget("\$513.00",
                            fontSize: 14.sp, fontWeight: FontWeight.w600)
                      ],
                    ),
                    Row(
                      children: [
                        textWidget("Savings",
                            fontSize: 14.sp, fontWeight: FontWeight.w600),
                        Spacer(),
                        textWidget("-\$30.00",
                            fontSize: 14.sp, fontWeight: FontWeight.w600)
                      ],
                    ),
                    SizedBox(
                      height: .5.h,
                    ),
                    Divider(
                      thickness: .5,
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      children: [
                        textWidget("Shipping",
                            fontSize: 14.sp, fontWeight: FontWeight.w600),
                        Spacer(),
                        textWidget("-\$5.00",
                            fontSize: 14.sp, fontWeight: FontWeight.w600)
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Divider(
                      thickness: .5,
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      children: [
                        textWidget("Total",
                            fontSize: 14.sp, fontWeight: FontWeight.w600),
                        Spacer(),
                        textWidget("\$478.00",
                            fontSize: 14.sp, fontWeight: FontWeight.w600)
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
