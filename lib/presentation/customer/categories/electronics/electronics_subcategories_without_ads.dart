import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salegates/core/widgets/appbar_with_title_widget.dart';
import 'package:salegates/presentation/cards/category_card_widget.dart';

class ElectonicSubcategoriesWithoutAds extends StatelessWidget {
  ElectonicSubcategoriesWithoutAds({super.key});
  final subCategories = [
    {
      "title": "موبيلات",
      "image": "assets/images/iphone.png",
    },
    {
      "title": "تليفزيونات و شاشات",
      "image": "assets/images/tv.png",
    },
    {
      "title": "سماعات",
      "image": "assets/images/headphone.png",
    },
    {
      "title": "الات موسيقيه",
      "image": "assets/images/music.png",
    },
    {
      "title": "كاميرات",
      "image": "assets/images/camera.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppbarWithTitleWidget(title: "الالكترونيات"),
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
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) =>
                                //             RealEstateSubcategoryWithAdsScreen(
                                //               filterValue: subCategories[index]
                                //                   ["title"]!,
                                //             )));
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
