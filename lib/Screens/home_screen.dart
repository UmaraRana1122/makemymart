import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:makemymart/Utils/app_colors.dart';
import 'package:makemymart/Widgets/banner_widget.dart';
import 'package:makemymart/Widgets/build_widget.dart';
import 'package:makemymart/Widgets/footer_widget.dart';
import 'package:makemymart/Widgets/gridview_widget.dart';
import 'package:makemymart/Widgets/logo_widget.dart';
import 'package:makemymart/Widgets/text_widget.dart';
import 'package:makemymart/Widgets/transaction_widget.dart';

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sticky_footer_scrollview/sticky_footer_scrollview.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> images = [
    "assets/images/1.png",
    "assets/images/2.png",
    "assets/images/3.png",
    "assets/images/4.png",
    "assets/images/5.png",
    "assets/images/6.png",
    "assets/images/7.png",
    "assets/images/8.png",
  ];

  final ScrollController firstController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: StickyFooterScrollView(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return detailWidget();
          },
          footer: //footer section
              Container(
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
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
        ),
      ),
    );
  }

  Widget detailWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
              GestureDetector(
                onTap: () {
                  final zoomDrawer = ZoomDrawer.of(context);
                  if (zoomDrawer != null) {
                    if (zoomDrawer.isOpen()) {
                      zoomDrawer.close();
                    } else {
                      zoomDrawer.open();
                    }
                  }
                },
                child: Container(
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
              ),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          //search field

          TextField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide(
                  color: AppTheme.colorTransparent,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              hintText: 'Search product and order',
              hintStyle: TextStyle(color: Colors.black38),
              border: InputBorder.none,
              filled: true,
              fillColor: AppTheme.colorLightWhite,
              prefixIcon: Icon(
                Icons.search,
                color: AppTheme.colorGrey,
              ),
            ),
          ),

          SizedBox(
            height: 2.h,
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: Image.asset(
              "assets/images/banner.png",
              height: 441,
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              textWidget("Shop with Category",
                  fontSize: 18.sp, fontWeight: FontWeight.w600),
              Spacer(),
              textWidget("View all",
                  color: AppTheme.primaryColor,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                buildContainer(context, "assets/images/Imaage.png", "Computer"),
                buildContainer(
                    context, "assets/images/speaker.png", "Headphones"),
                buildContainer(
                    context, "assets/images/mobile.png", "Smart Phone"),
                buildContainer(context, "assets/images/Imaage.png", "Wearable"),
              ],
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            children: [
              Container(
                height: 3.2.h,
                width: 1.5.w,
                decoration: BoxDecoration(
                    color: AppTheme.primaryColor,
                    borderRadius: BorderRadius.circular(8)),
              ),
              SizedBox(
                width: 10,
              ),
              textWidget("Trending",
                  fontSize: 18.sp, fontWeight: FontWeight.w600),
              Spacer(),
              textWidget("View all",
                  color: AppTheme.primaryColor,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          TrendingWidget(
            images: const [
              'assets/images/1.png',
              'assets/images/2.png',
              'assets/images/3.png',
              'assets/images/4.png',
            ],
            titles: const [
              'White Shirt',
              'Blue Jeans',
              'Red Dress',
              'Red Shirt'
            ],
            brands: const ['Brand A', 'Brand B', 'Brand C', 'Brand D'],
            prices: const ['\$13.00', '\$25.00', '\$45.00', '\$34.00'],
          ),

          SizedBox(
            height: 2.h,
          ),
          Row(
            children: [
              Container(
                height: 3.2.h,
                width: 1.5.w,
                decoration: BoxDecoration(
                    color: AppTheme.primaryColor,
                    borderRadius: BorderRadius.circular(8)),
              ),
              SizedBox(
                width: 10,
              ),
              textWidget("Popular",
                  fontSize: 18.sp, fontWeight: FontWeight.w600),
              Spacer(),
              textWidget("View all",
                  color: AppTheme.primaryColor,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          TrendingWidget(
            images: const [
              'assets/images/5.png',
              'assets/images/6.png',
              'assets/images/7.png',
              'assets/images/8.png',
            ],
            titles: const [
              'White Shirt',
              'Blue Jeans',
              'Red Dress',
              'Red Shirt'
            ],
            brands: const ['Brand A', 'Brand B', 'Brand C', 'Brand D'],
            prices: const ['\$13.00', '\$25.00', '\$45.00', '\$34.00'],
          ),

          SizedBox(
            height: 3.h,
          ),
          bannerWidget(context, "assets/images/9.png", "text"),
        ],
      ),
    );
  }
}

class DrawerScree extends StatefulWidget {
  final ValueSetter setIndex;
  const DrawerScree({super.key, required this.setIndex});

  @override
  State<DrawerScree> createState() => _DrawerScreeState();
}

class _DrawerScreeState extends State<DrawerScree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 2.h,
            ),
            Text(
              "Sarah Abbas",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 6.h,
            ),
            textWidget("text"),
            SizedBox(
              height: .6.h,
            ),
            textWidget("text"),
            SizedBox(
              height: .6.h,
            ),
            textWidget("text"),
            SizedBox(
              height: .6.h,
            ),
            textWidget("text"),
            SizedBox(
              height: .6.h,
            ),
            textWidget("text"),
            SizedBox(
              height: .6.h,
            ),
            textWidget("text"),
            SizedBox(
              height: 15.h,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 5.7.h,
                    width: 31.w,
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.white),
                    ),
                    child: textWidget("text")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
