import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salegates/core/widgets/appbar_with_title_widget.dart';
import 'package:salegates/presentation/cards/category_card_widget.dart';
import 'package:salegates/presentation/customer/categories/cars/car_ads_screen.dart';
import 'package:salegates/presentation/customer/categories/cars/car_brand_type_screen.dart';

class CarSubcategoriesWithoutAds extends StatelessWidget {
  CarSubcategoriesWithoutAds({super.key, this.addScreen = true});
  final bool addScreen;
  final subCategories = [
    {
      "id": "1",
      "title": "سيارات جديدة",
      "image": "assets/images/car.png",
    },
    {
      "id": "2",
      "title": "سيارات مستعملة",
      "image": "assets/images/car.png",
    },
    {
      "id": "3",
      "title": "قطع غيار واكسسوارات",
      "image": "assets/images/tire.png",
    },
    {
      "id": "4",
      "title": "لوحات سيارات مميزه",
      "image": "assets/images/plate.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppbarWithTitleWidget(title: "سيارات"),
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
                          crossAxisCount: 3,
                        ),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.all(5.0.h),
                            child: GestureDetector(
                              onTap: addScreen
                                  ? () {
                                      if (subCategories[index]["id"] == "1" ||
                                          subCategories[index]["id"] == "2") {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    CarBrandScreen()));
                                      }
                                    }
                                  : () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  CarAdsScreen()));
                                    },
                              child: CategoryCardWidget(
                                  title: subCategories[index]["title"]!,
                                  image: subCategories[index]["image"]!),
                            ),
                          );
                        }),
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
