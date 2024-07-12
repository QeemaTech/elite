import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/theme/theme.dart';
import 'package:salegates/core/widgets/appbar_with_title_widget.dart';
import 'package:salegates/core/widgets/common_widgets.dart';
import 'package:salegates/presentation/cards/category_card_widget.dart';
import 'package:salegates/presentation/vendor/boutique_screen.dart';
import 'package:salegates/presentation/vendor/car_category_vendor_screen.dart';

class ChooseSectionScreen extends StatelessWidget {
  ChooseSectionScreen({super.key});

  get readOnly => null;
  final List<Map<String, String>> categoryItems = [
    {
      "image": "assets/images/boutique.png",
      "id": "8",
      "category_id": "8",
      "title": "البوتيك "
    },
    {
      "image": "assets/images/house.png",
      "id": "1",
      "category_id": "1",
      "title": "قسم العقارات"
    },
    {
      "image": "assets/images/car.png",
      "id": "2",
      "category_id": "2",
      "title": "قسم السيارات"
    },
    {
      "image": "assets/images/lab.png",
      "id": "3",
      "category_id": "3",
      "title": "قسم الإلكترونيات"
    },
    {
      "image": "assets/images/clothes.png",
      "id": "4",
      "category_id": "4",
      "title": "قسم الازياء"
    },
    {
      "image": "assets/images/chair.png",
      "id": "5",
      "category_id": "5",
      "title": "قسم الاثاث"
    },
    {
      "image": "assets/images/jobs.png",
      "id": "6",
      "category_id": "6",
      "title": "قسم الوظائف"
    },
    {
      "image": "assets/images/bird.png",
      "id": "7",
      "category_id": "7",
      "title": "قسم الحيوانات والطيور"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppbarWithTitleWidget(
            title: "اختر القسم",
            removeSearchIcon: true,
            isBack: false,
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.all(20.0.h),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 50.h,
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    decoration: BoxDecoration(
                      color: AppColors.primaryLight,
                      border: Border.all(color: AppColors.primary),
                      borderRadius: BorderRadius.circular(10.h),
                    ),
                    child: TextField(
                      readOnly: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: SvgPicture.asset("assets/svgs/search.svg"),
                          hintText: "بحث عن قسم",
                          hintStyle:
                              AppTheme.textBody16black39weight400().copyWith(
                            color: AppColors.primary,
                          )),
                    ),
                  ),
                  GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 5.h,
                        crossAxisSpacing: 5.h,
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: categoryItems.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            switch (categoryItems[index]["category_id"]) {
                              case "2":
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CarCategoryVendorScreen()));
                                break;
                              case "8":
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            BoutiqueScreen()));
                                break;
                            }
                          },
                          child: CategoryCardWidget(
                            image: categoryItems[index]["image"]!,
                            title: categoryItems[index]["title"]!,
                            key: ValueKey(categoryItems[index]["id"]),
                          ),
                        );
                      }),

                  // SizedBox(
                  //   height: 100.h,
                  // ),
                  //   AppButton(onPressed: (){}, text: )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
