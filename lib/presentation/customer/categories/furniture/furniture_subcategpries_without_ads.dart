import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salegates/core/widgets/appbar_with_title_widget.dart';
import 'package:salegates/presentation/add%20Ads/add_ad_general_screen.dart';
import 'package:salegates/presentation/cards/category_card_widget.dart';
import 'package:salegates/presentation/customer/categories/furniture/furniture_ads_screen.dart';

class FurnitureSubcategoriesWithoutAds extends StatelessWidget {
  FurnitureSubcategoriesWithoutAds({super.key, this.addScreen = true});
  final bool addScreen;
  final subCategories = [
    {
      "title": "اثاث منزلي",
      "image": "assets/images/home_furniture.png",
    },
    {
      "title": "اثاث مكتبي",
      "image": "assets/images/office_furniture.png",
    },
    {
      "title": "كنب ",
      "image": "assets/images/sofa.png",
    },
    {
      "title": "طاولات وكراسي",
      "image": "assets/images/chair2.png",
    },
    {
      "title": "مفروشات",
      "image": "assets/images/pillow.png",
    },
    {
      "title": "دواليب وخزائن",
      "image": "assets/images/drawer.png",
    },
    {
      "title": "مراتب",
      "image": "assets/images/mattress.png",
    },
    {
      "title": "تحف وزينة",
      "image": "assets/images/wood_box.png",
    },
    {
      "title": "اثاث خارجي",
      "image": "assets/images/swing.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppbarWithTitleWidget(title: "الاثاث"),
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
                          childAspectRatio: 1 / 1.3,
                        ),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.all(5.0.h),
                            child: GestureDetector(
                              onTap: addScreen
                                  ? () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  AddGeneralAdScreen()));
                                    }
                                  : () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  FurnitureAdsScreen()));
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
