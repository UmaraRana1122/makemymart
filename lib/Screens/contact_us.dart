import 'package:flutter/material.dart';
import 'package:makemymart/Utils/app_colors.dart';
import 'package:makemymart/Widgets/custom_button_widget.dart';
import 'package:makemymart/Widgets/footer_widget.dart';
import 'package:makemymart/Widgets/info_display_widget.dart';
import 'package:makemymart/Widgets/round_button.dart';
import 'package:makemymart/Widgets/text_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sticky_footer_scrollview/sticky_footer_scrollview.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

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
                        fontSize: 17.sp, fontWeight: FontWeight.w600),
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
                return aboutWidget();
              },
              itemCount: 1)),
    );
  }

  Widget aboutWidget() {
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
            textWidget("Contact Us",
                fontSize: 15.sp, fontWeight: FontWeight.w600),
            SizedBox(
              height: .5.h,
            ),
            textWidget(
                "Have some big idea or brand to develop and need help? Then reach out we'd love to hear about your project  and provide help",
                fontSize: 14.sp,
                color: AppTheme.colorGrey,
                fontWeight: FontWeight.w300),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textWidget("Socials",
                        fontSize: 15.sp, fontWeight: FontWeight.w600),
                    textWidget(
                      "Instagram",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      decorationColor: AppTheme.colorGrey,
                      color: AppTheme.colorGrey,
                      textAlign: TextAlign.center,
                    ),
                    textWidget(
                      "Twitter",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      decorationColor: AppTheme.colorGrey,
                      color: AppTheme.colorGrey,
                      textAlign: TextAlign.center,
                    ),
                    textWidget(
                      "Facebook",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      decorationColor: AppTheme.colorGrey,
                      color: AppTheme.colorGrey,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(
                  width: 20.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textWidget("Email",
                        fontSize: 15.sp, fontWeight: FontWeight.w600),
                    textWidget(
                      "Demo@gmail.com",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppTheme.colorGrey,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 5.5.h,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            textWidget("Name", fontSize: 14.sp, fontWeight: FontWeight.w500),
            SizedBox(
              height: .7.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(11),
                filled: true,
                fillColor: AppTheme.colorLightWhite,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            textWidget("Email", fontSize: 14.sp, fontWeight: FontWeight.w500),
            SizedBox(
              height: .7.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(11),
                filled: true,
                fillColor: AppTheme.colorLightWhite,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            textWidget("Message", fontSize: 14.sp, fontWeight: FontWeight.w500),
            SizedBox(
              height: .7.h,
            ),
            TextFormField(
              maxLines: 5,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(11),
                filled: true,
                fillColor: AppTheme.colorLightWhite,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            CustomButton(
              text: "Submit",
              onPressed: () {
                print("Button Pressed!");
              },
              backgroundColor: AppTheme.colorBlack,
              textColor: AppTheme.colorTransparent,
              fontSize: 14,
            )
          ],
        ),
      ),
    );
  }
}
