import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makemymart/Screens/about_us.dart';
import 'package:makemymart/Screens/cart_page.dart';
import 'package:makemymart/Screens/checkout_screen.dart';
import 'package:makemymart/Screens/contact_us.dart';
import 'package:makemymart/Screens/home_screen.dart';
import 'package:makemymart/Screens/product_screen.dart';
import 'package:makemymart/Screens/screen.dart';
import 'package:makemymart/Screens/zoom_drawer_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        );
      },
    );
  }
}
