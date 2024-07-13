import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salegates/core/widgets/appbar_with_title_widget.dart';
import 'package:salegates/presentation/add%20Ads/add_ad_general_screen.dart';
import 'package:salegates/presentation/cards/category_card_widget.dart';
import 'package:salegates/presentation/customer/categories/jobs/jobs_ads_screen.dart';

class JobsSubcategoriesWithoutAds extends StatelessWidget {
  JobsSubcategoriesWithoutAds({super.key, this.addScreen = true});
  final bool addScreen;

  final subCategories = [
    {
      "title": "نقل عفش",
      "image": "assets/images/furniture_transfeer.png",
    },
    {
      "title": "وظائف وتوظيف",
      "image": "assets/images/job_search.png",
    },
    {
      "title": "سياحة وسفر",
      "image": "assets/images/travel.png",
    },
    {
      "title": "مشاوير خاصة",
      "image": "assets/images/car.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppbarWithTitleWidget(title: "الوظائف"),
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
                                                  JobsAdsScreen()));
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
