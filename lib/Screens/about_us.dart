import 'package:flutter/material.dart';
import 'package:makemymart/Utils/app_colors.dart';
import 'package:makemymart/Widgets/footer_widget.dart';
import 'package:makemymart/Widgets/info_display_widget.dart';
import 'package:makemymart/Widgets/text_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sticky_footer_scrollview/sticky_footer_scrollview.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

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
            textWidget("About Us",
                fontSize: 14.sp, fontWeight: FontWeight.w600),
            textWidget("Make My Mart",
                fontSize: 17.sp, fontWeight: FontWeight.w600),
            SizedBox(
              height: 1.h,
            ),
            textWidget(
                textAlign: TextAlign.center,
                "HRLInk is a cloud-based HR system designed to simplify and streamline HR processes. Grove HR is a powerful tool that can help SMB businesses manage their HR operations with ease.HRLInk is a cloud-based HR system designed to simplify and streamline HR processes. Grove HR is a powerful tool that can help SMB businesses manage their HR operations with ease.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                fontSize: 15.sp,
                fontWeight: FontWeight.w300),
            SizedBox(
              height: 5.h,
            ),
            textWidget("Why Enver Is The Best Choice?",
                fontSize: 17.sp, fontWeight: FontWeight.w600),
            Image.asset(
              "assets/images/video.png",
              height: 30.h,
            ),
            SizedBox(
              height: 1.h,
            ),
            textWidget("Get Everything Done"),
            SizedBox(
              height: 3.h,
            ),
            InfoDisplayWidget(
              imagePath: "assets/images/done.png",
              subtitle: "Skyrocket conversion rate",
              description:
                  "Increase online store conversion up to 25% with our online visual merchandising interface.",
            ),
            SizedBox(
              height: 4.h,
            ),
            InfoDisplayWidget(
              imagePath: "assets/images/money.png",
              subtitle: "Increase average order value",
              description:
                  "Increase the average order value of your online store up to 15% easily.",
            ),
            SizedBox(
              height: 4.h,
            ),
            InfoDisplayWidget(
              imagePath: "assets/images/clock.png",
              subtitle: "Spend less time for management",
              description:
                  "Let your employees spend much less time managing the online store catalog.",
            ),
          ],
        ),
      ),
    );
  }
}
