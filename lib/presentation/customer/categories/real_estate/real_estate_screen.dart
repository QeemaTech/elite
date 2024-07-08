import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/widgets/appbar_with_title_widget.dart';
import 'package:salegates/core/widgets/common_widgets.dart';
import 'package:salegates/core/widgets/slider_widget.dart';
import 'package:salegates/presentation/cards/category_card_widget.dart';
import 'package:salegates/presentation/cards/horizintal_real_estate_card.dart';
import 'package:salegates/presentation/customer/categories/real_estate/real_estate_subcategory_screen_with_ads.dart';

class RealEstateScreen extends StatelessWidget {
  RealEstateScreen({super.key});
  final subCategories = [
    {
      "title": "للبيع",
      "image": "assets/images/house.png",
    },
    {
      "title": "للإيجار",
      "image": "assets/images/real_estate.png",
    },
    {
      "title": "للبدل",
      "image": "assets/images/home.png",
    },
    {
      "title": "بيزنس",
      "image": "assets/images/comm_ad1.png",
    },
    {
      "title": "للبيع",
      "image": "assets/images/house.png",
    },
    {
      "title": "للإيجار",
      "image": "assets/images/real_estate.png",
    },
    {
      "title": "للبدل",
      "image": "assets/images/home.png",
    },
    {
      "title": "بيزنس",
      "image": "assets/images/comm_ad1.png",
    },
    {
      "title": "للإيجار",
      "image": "assets/images/real_estate.png",
    },
    {
      "title": "للبدل",
      "image": "assets/images/home.png",
    },
  ];

  final businessSubCategories = [
    {
      "title": "محلات عقارية",
      "image": "assets/images/house.png",
    },
    {
      "title": "مكاتب سيارات",
      "image": "assets/images/car.png",
    },
    {
      "title": "مكاتب ادارية",
      "image": "assets/images/lab.png",
    },
    {
      "title": "مكاتب عقارية",
      "image": "assets/images/real_estate.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppbarWithTitleWidget(title: "قسم العقارات"),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20.0.h),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: subCategories.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                        ),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.all(5.0.h),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            RealEstateSubcategoryScreen(
                                              filterValue: subCategories[index]
                                                  ["title"]!,
                                            )));
                              },
                              child: CategoryCardWidget(
                                  title: subCategories[index]["title"]!,
                                  image: subCategories[index]["image"]!),
                            ),
                          );
                        }),
                    SizedBox(
                      height: 20.h,
                    ),
                    const SliderWidget(),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextWithAll(
                      text: "بيزنس",
                      onTap: () {},
                      allColor: AppColors.textOrangeColor,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      height: 120.h,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: businessSubCategories.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.all(5.0.h),
                              child: CategoryCardWidget(
                                  title: businessSubCategories[index]["title"]!,
                                  image: businessSubCategories[index]
                                      ["image"]!),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextWithAll(
                      text: "اعلانات مدفوعة",
                      onTap: () {},
                      allColor: AppColors.textOrangeColor,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      height: 210.h,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: businessSubCategories.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.all(5.0.h),
                              child: const HorizontalRealEstateCard(),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
