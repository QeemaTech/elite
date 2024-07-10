import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salegates/core/widgets/appbar_with_title_widget.dart';
import 'package:salegates/presentation/cards/category_card_widget.dart';

class ClothesSubcategoriesWithoutAds extends StatelessWidget {
  ClothesSubcategoriesWithoutAds({super.key});
  final subCategories = [
    {
      "title": "ملابس نسائية",
      "image": "assets/images/women_clothes.png",
    },
    {
      "title": "ساعات",
      "image": "assets/images/watch.png",
    },
    {
      "title": "ملابس رجاليه",
      "image": "assets/images/menclothes.png",
    },
    {
      "title": "حقائب",
      "image": "assets/images/bag.png",
    },
    {
      "title": "هدايا",
      "image": "assets/images/gift.png",
    },
    {
      "title": "مجوهرات واكسسوارات",
      "image": "assets/images/jwellery.png",
    },
    {
      "title": "ادوات تجميل",
      "image": "assets/images/cosmatics.png",
    },
    {
      "title": "احذية",
      "image": "assets/images/shoes.png",
    },
    {
      "title": "ملابس اطفال",
      "image": "assets/images/children.png",
    },
    {
      "title": "عطور",
      "image": "assets/images/perfum.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppbarWithTitleWidget(title: "الأزياء"),
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
