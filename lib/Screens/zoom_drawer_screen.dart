import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
// import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:makemymart/Screens/cart_page.dart';
import 'package:makemymart/Screens/checkout_screen.dart';
import 'package:makemymart/Screens/contact_us.dart';
import 'package:makemymart/Screens/home_screen.dart';
import 'package:makemymart/Screens/product_screen.dart';
import 'package:makemymart/Utils/app_colors.dart';
import 'package:makemymart/Widgets/text_widget.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

List titles = [
  "Home",
  "Profile",
  "Notifications",
  "Change Password",
];

List images = [
  "assets/icons/cart.png",
  "assets/icons/credit.png",
  "assets/icons/fit.png",
  "assets/icons/shipping.png",
];

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  int currentIndex = -1;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyDrawerController>(
      init: MyDrawerController(),
      builder: (MyDrawerController _) => GestureDetector(
        onTap: () {
          _.closeDrawer();
        },
        child: Stack(
          children: [
            Image.asset(
              "assets/images/img2.png",
              fit: BoxFit.cover,
              height: Get.height,
              width: Get.width,
            ),
            Scaffold(
                resizeToAvoidBottomInset: false,
                backgroundColor: Colors.transparent,
                body: Builder(builder: (context) {
                  return Stack(children: [
                    ZoomDrawer(
                        disableDragGesture: false,
                        controller: _.zoomDrawerController,
                        menuScreen: DrawerScreen(setIndex: (index) {
                          setState(() {
                            currentIndex = index;
                            _.open = false;
                          });
                        }),
                        mainScreen: Builder(builder: (context) {
                          return HomeScreen();
                        }),
                        borderRadius: 30,
                        // style: DrawerStyle.style2,
                        showShadow: true,
                        angle: -10,
                        slideWidth: 290,
                        shadowLayer1Color: Colors.transparent,
                        shadowLayer2Color: Colors.grey.shade100,

                        // slideHeight: 0,
                        menuBackgroundColor: Colors.transparent),
                    _.open
                        ? Positioned.fill(
                            child: SafeArea(
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24.0),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Row(children: [
                                            InkWell(
                                              onTap: () {
                                                _.closeDrawer();
                                              },
                                              child: Image.asset(
                                                  "assets/icons/more.png",
                                                  height: 4.h),
                                            ),
                                          ]),
                                          SizedBox(height: 3.h),
                                          Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 12.0),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Stack(
                                                      children: [
                                                        CircleAvatar(
                                                          radius: 4.h,
                                                          backgroundColor:
                                                              AppTheme
                                                                  .primaryColor,
                                                          child: CircleAvatar(
                                                              radius: 3.8.h,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              backgroundImage:
                                                                  AssetImage(
                                                                      "assets/images/img1.png")),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 2.h),
                                                    textWidget("Hey, 👋",
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                    SizedBox(height: 1.h),
                                                    textWidget("Amber Bajh",
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w400)
                                                  ]))
                                        ]))))
                        : const SizedBox(),
                    _.open
                        ? Positioned.fill(
                            child: Align(
                            alignment: Alignment.bottomLeft,
                            child: SafeArea(
                                bottom: false,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Get.find<MyDrawerController>()
                                              .closeDrawer();
                                          Get.offAll(CartPage());
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 30.0, vertical: 10),
                                          margin: const EdgeInsets.all(14.0),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(80),
                                            color: AppTheme.primaryColor,
                                          ),
                                          child: textWidget("Log Out",
                                              color: AppTheme.colorWhite,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      // Padding(
                                      //   padding: const EdgeInsets.all(15.0),
                                      //   child: InkWell(
                                      //       onTap: () {
                                      //         Get.to(LoginPage());
                                      //       },
                                      //       child: Image.asset(
                                      //         "assets/icons/out1.png",
                                      //         height: 4.h,
                                      //         color: MyColors.primary,
                                      //       )),
                                      // ),
                                    ],
                                  ),
                                )),
                          ))
                        : SizedBox()
                  ]);
                })),
          ],
        ),
      ),
    );
  }
}

class DrawerScreen extends StatefulWidget {
  final ValueSetter setIndex;
  const DrawerScreen({Key? key, required this.setIndex}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  List pages = [
    HomeScreen(),
    SizedBox(),
    SizedBox(),
    SizedBox(),
  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyDrawerController>(
        init: MyDrawerController(),
        builder: (MyDrawerController _) => Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(children: [
              Positioned.fill(
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                          height: 74.h,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: Center(
                                        child: SizedBox(
                                            width: 43.w,
                                            child: ListView.builder(
                                                // padding: EdgeInsets.zero,
                                                itemCount: titles.length,
                                                itemBuilder: (context, index) =>
                                                    InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                            // widget.setIndex(
                                                            //     index);

                                                            _.update();
                                                            log(_.active
                                                                .toString());
                                                            if (index == 0) {
                                                              Get.find<
                                                                      MyDrawerController>()
                                                                  .closeDrawer();
                                                              Get.to(
                                                                  HomeScreen());
                                                            }
                                                            if (index == 1) {
                                                              Get.find<
                                                                      MyDrawerController>()
                                                                  .closeDrawer();
                                                              Get.to(
                                                                  ProductScreen());
                                                            }
                                                            if (index == 2) {
                                                              Get.find<
                                                                      MyDrawerController>()
                                                                  .closeDrawer();
                                                              Get.to(
                                                                  CheckoutScreen());
                                                            }
                                                            if (index == 3) {
                                                              Get.find<
                                                                      MyDrawerController>()
                                                                  .closeDrawer();
                                                              Get.to(
                                                                  ContactUs());
                                                            }

                                                            _.closeDrawer();
                                                            if (_.active != 3 &&
                                                                _.active != 5 &&
                                                                _.active !=
                                                                    6) {}
                                                            ZoomDrawer.of(
                                                                    context)!
                                                                .close();
                                                            _.closeDrawer();
                                                          });
                                                        },
                                                        child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    vertical:
                                                                        6.0),
                                                            child: Container(
                                                                height: 4.5.h,
                                                                decoration: BoxDecoration(
                                                                    color: _.active ==
                                                                            index
                                                                        ? AppTheme
                                                                            .colorWhite
                                                                        : Colors
                                                                            .transparent,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            30)),
                                                                child: Row(
                                                                    children: [
                                                                      SizedBox(
                                                                          width:
                                                                              4.w),
                                                                      Image
                                                                          .asset(
                                                                        images[
                                                                            index],
                                                                        height:
                                                                            2.h,
                                                                        color: _.active ==
                                                                                index
                                                                            ? AppTheme.primaryColor
                                                                            : AppTheme.colorWhite,
                                                                      ),
                                                                      SizedBox(
                                                                          width:
                                                                              4.w),
                                                                      Text(
                                                                          titles[
                                                                              index],
                                                                          style: GoogleFonts.plusJakartaSans(
                                                                              color: _.active == index ? AppTheme.primaryColor : AppTheme.colorWhite,
                                                                              fontSize: 14.sp,
                                                                              fontWeight: _.active == index ? FontWeight.w600 : FontWeight.w500)),
                                                                    ]))))))))
                              ]))))
            ])));
  }
}

class MyDrawerController extends GetxController {
  @override
  final zoomDrawerController = ZoomDrawerController();
  bool open = false;
  void toggleDrawer() {
    print("Toggle drawer");
    Timer(const Duration(microseconds: 30), () {
      open = true;

      update();
    });
    zoomDrawerController.toggle?.call();
    update();
  }

  int active = 0;

  void closeDrawer() {
    print("Close drawer");
    Timer(const Duration(microseconds: 800), () {
      open = false;

      update();
    });
    zoomDrawerController.close?.call();
    update();
  }
}
