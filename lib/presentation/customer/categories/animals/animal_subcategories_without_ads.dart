import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salegates/core/widgets/appbar_with_title_widget.dart';
import 'package:salegates/presentation/cards/category_card_widget.dart';

class AnimalsSubcategoriesWithoutAds extends StatelessWidget {
  AnimalsSubcategoriesWithoutAds({super.key});
  final subCategories = [
    {
      "title": "طيور",
      "image": "assets/images/bird2.png",
    },
    {
      "title": "قطط",
      "image": "assets/images/cat.png",
    },
    {
      "title": "كلاب",
      "image": "assets/images/dog.png",
    },
    {
      "title": "خيول",
      "image": "assets/images/horse.png",
    },
    {
      "title": "دجاج وبط",
      "image": "assets/images/chicken.png",
    },
    {
      "title": "اسماك",
      "image": "assets/images/fish.png",
    },
    {
      "title": "سلاحف",
      "image": "assets/images/turtule.png",
    },
    {
      "title": "ارانب",
      "image": "assets/images/rabbit.png",
    },
    {
      "title": "إبل وجمال",
      "image": "assets/images/camel.png",
    },
    {
      "title": "غنم وماعز",
      "image": "assets/images/goat.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppbarWithTitleWidget(title: "حيوانات وطيور"),
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
