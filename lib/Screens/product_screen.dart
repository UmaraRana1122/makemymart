import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makemymart/Utils/app_colors.dart';
import 'package:makemymart/Widgets/gridview_widget.dart';
import 'package:makemymart/Widgets/table_widget.dart';
import 'package:makemymart/Widgets/text_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int currentIndex = 0;
  int index = 0;
  int indexx = 0;
  int selectedIndex = 0;
  int selectedindex = -1;

  final List<String> questions = [
    "What is your preferred payment method?",
    "How long does shipping take?",
    "What is the return policy?",
  ];

  final List<Color> colors = [
    AppTheme.colorBlack1,
    AppTheme.colorYellow,
    AppTheme.colorPink,
    AppTheme.colorMeroon,
  ];

  final List<String> imgList = [
    'assets/images/product1.png',
    'assets/images/1.png',
    'assets/images/8.png',
  ];

  final List<String> sizeText = ['M', 'L', 'S', 'XL', 'XS'];

  final List<Map<String, dynamic>> items = [
    {"icon": "assets/icons/credit.png", "text": "Secure payment"},
    {"icon": "assets/icons/fit.png", "text": "Size & Fit"},
    {"icon": "assets/icons/truck.png", "text": "Free shipping"},
    {"icon": "assets/icons/shipping.png", "text": "Free Shipping & Returns"},
  ];

  final CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppTheme.colorWhite,
        body: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeader(),
                  SizedBox(height: 3.h),
                  _buildImageCarousel(),
                  SizedBox(height: 2.h),
                  _buildThumbnailList(),
                  SizedBox(height: 2.h),
                  _buildProductDetails(),
                  SizedBox(height: 2.h),
                  _buildSizeSelection(),
                  SizedBox(height: 1.h),
                  _buildColorSelection(),
                  SizedBox(height: 2.h),
                  _buildCartButtons(),
                  SizedBox(height: 4.h),
                  Divider(),
                  SizedBox(height: 2.h),
                  _buildFeatureList(),
                  SizedBox(height: .3.h),
                  _buildProductDescription(),
                  _buildTabBar(),
                  SizedBox(height: 2.h),
                  _buildTabBarView(),
                  SizedBox(height: 2.h),
                  _buildTrendingSection(),
                  SizedBox(height: 2.h),
                  _buildTrendingWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildIconButton("assets/icons/cart.png", AppTheme.colorLightPurple),
        Image.asset("assets/logo/logo.png", height: 36),
        _buildIconButton("assets/icons/more.png", AppTheme.colorLightWhite),
      ],
    );
  }

  Widget _buildIconButton(String assetPath, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(assetPath, height: 25),
      ),
    );
  }

  Widget _buildImageCarousel() {
    return Container(
      width: Get.width,
      height: MediaQuery.of(context).size.height * 0.56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Image.asset(
        imgList[selectedIndex],
        fit: BoxFit.fill,
      ),
    );
  }

  Widget _buildThumbnailList() {
    return Container(
      height: 70,
      child: ListView.builder(
        itemCount: imgList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: index == 0 ? 75 : 12),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    width: 1,
                    color: selectedIndex == index
                        ? AppTheme.colorBlack
                        : AppTheme.colorTransparent,
                  ),
                  image: DecorationImage(
                    image: AssetImage(imgList[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildProductDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textWidget("Raven Hoodie With Black colored Design",
            color: AppTheme.colorBlack1,
            fontSize: 18.sp,
            fontWeight: FontWeight.w600),
        textWidget("Select size",
            color: AppTheme.colorBlack1,
            fontSize: 18.sp,
            fontWeight: FontWeight.w500),
      ],
    );
  }

  Widget _buildSizeSelection() {
    return Container(
      height: 45,
      child: ListView.builder(
        itemCount: sizeText.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: index == 0 ? 0 : 12),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  indexx = index;
                });
              },
              child: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: indexx == index
                      ? AppTheme.primaryColor
                      : AppTheme.colorTransparent,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    width: 1,
                    color: indexx == index
                        ? AppTheme.colorTransparent
                        : Colors.grey,
                  ),
                ),
                child: Center(
                  child: Text(
                    sizeText[index],
                    style: TextStyle(
                      color:
                          indexx == index ? AppTheme.colorWhite : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildColorSelection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textWidget("Color Available",
            color: AppTheme.colorBlack1,
            fontSize: 18.sp,
            fontWeight: FontWeight.w500),
        Row(
          children: List.generate(colors.length, (index) {
            bool isSelected = selectedindex == index;
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedindex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: CircleAvatar(
                  radius: 2.h,
                  backgroundColor:
                      isSelected ? AppTheme.primaryColor : Colors.transparent,
                  child: CircleAvatar(
                    radius: isSelected ? 1.8.h : 2.h,
                    backgroundColor: Colors.transparent,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 1.5.h,
                        backgroundColor: colors[index],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }

  Widget _buildCartButtons() {
    return Row(
      children: [
        _buildAddToCartButton(),
        SizedBox(width: 20),
        _buildPriceTag("\$13.00"),
        SizedBox(width: 20),
        _buildIconButton("assets/icons/cart.png", AppTheme.colorLightWhite),
        Spacer(),
      ],
    );
  }

  Widget _buildAddToCartButton() {
    return Container(
      width: Get.width * .4,
      decoration: BoxDecoration(
        color: AppTheme.primaryColor,
        borderRadius: BorderRadius.circular(9999),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            textWidget("Add to cart",
                fontSize: 15.sp,
                color: AppTheme.colorWhite,
                fontWeight: FontWeight.w400),
            Image.asset(
              "assets/icons/cart.png",
              color: AppTheme.colorWhite,
              height: 25,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPriceTag(String price) {
    return Container(
      width: Get.width * .21,
      decoration: BoxDecoration(
        color: AppTheme.colorLightWhite,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Center(
          child: textWidget(price,
              fontSize: 15.sp,
              color: AppTheme.primaryColor,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  Widget _buildFeatureList() {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: (items.length / 2).ceil(),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int i = index * 2;
                  i < index * 2 + 2 && i < items.length;
                  i++)
                Expanded(
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 2.h,
                        backgroundColor: AppTheme.colorLightWhite,
                        child: Image.asset(items[i]["icon"], height: 20),
                      ),
                      SizedBox(width: 8),
                      Flexible(
                        child: textWidget(
                          items[i]["text"],
                          color: AppTheme.colorBlack,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildProductDescription() {
    return Row(
      children: [
        Container(
          height: 3.2.h,
          width: 1.5.w,
          decoration: BoxDecoration(
            color: AppTheme.primaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        SizedBox(width: 10),
        textWidget("Product Description",
            color: AppTheme.colorBlack1,
            fontSize: 18.sp,
            fontWeight: FontWeight.w600),
      ],
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      labelPadding: EdgeInsets.zero,
      tabs: [
        Tab(text: "Description"),
        Tab(text: "Question & Answers"),
      ],
      indicatorColor: AppTheme.colorGrey,
      labelStyle: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w300,
      ),
      labelColor: AppTheme.colorBlack,
      unselectedLabelColor: AppTheme.colorGrey,
    );
  }

  Widget _buildTabBarView() {
    return Container(
      height: 42.h,
      child: TabBarView(
        children: [
          _buildDescriptionTab(),
          _buildQuestionsTab(),
        ],
      ),
    );
  }

  Widget _buildDescriptionTab() {
    return Column(
      children: [
        textWidget(
          "100% Bio-washed Cotton – makes the fabric extra soft & silky. Flexible ribbed crew neck. Precisely stitched with no pilling & no fading. Provide all-time comfort. Anytime, anywhere. Infinite range of matte-finish HD prints.",
          fontSize: 15.sp,
          fontWeight: FontWeight.w500,
          color: AppTheme.colorGrey,
        ),
        SizedBox(height: 2.h),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppTheme.colorLightWhite,
          ),
          child: Table(
            border: TableBorder.symmetric(
              inside: BorderSide(
                color: AppTheme.colorGreyLight,
                width: 1.4,
              ),
            ),
            children: [
              TableRow(
                children: [
                  TableCell(child: tableWidget("Fabric", "Bio-washed Cotton")),
                  TableCell(child: tableWidget("Pattern", "Printed")),
                ],
              ),
              TableRow(
                children: [
                  TableCell(child: tableWidget("Fit", "Regular-Fit")),
                  TableCell(child: tableWidget("Neck", "Round Neck")),
                ],
              ),
              TableRow(
                children: [
                  TableCell(child: tableWidget("Sleeve", "Half-Sleeve")),
                  TableCell(child: tableWidget("Style", "Casual Wear")),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildQuestionsTab() {
    return ListView.builder(
      itemCount: questions.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: textWidget(
            questions[index],
            color: AppTheme.colorBlack,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        );
      },
    );
  }

  Widget _buildTrendingSection() {
    return Row(
      children: [
        Container(
          height: 3.2.h,
          width: 1.5.w,
          decoration: BoxDecoration(
            color: AppTheme.primaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        SizedBox(width: 10),
        textWidget("Trending", fontSize: 18.sp, fontWeight: FontWeight.w600),
        Spacer(),
        textWidget("View all",
            color: AppTheme.primaryColor,
            fontSize: 15.sp,
            fontWeight: FontWeight.w400),
      ],
    );
  }

  Widget _buildTrendingWidget() {
    return TrendingWidget(
      images: [
        'assets/images/5.png',
        'assets/images/6.png',
        'assets/images/7.png',
        'assets/images/8.png',
      ],
      titles: [
        'White Shirt',
        'Blue Jeans',
        'Red Dress',
        'Red Shirt',
      ],
      brands: [
        'Brand A',
        'Brand B',
        'Brand C',
        'Brand D',
      ],
      prices: [
        '\$13.00',
        '\$25.00',
        '\$45.00',
        '\$34.00',
      ],
    );
  }
}
