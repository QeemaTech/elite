import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:salegates/core/widgets/appbar_with_title_widget.dart';
import 'package:salegates/core/widgets/common_widgets.dart';
import 'package:salegates/presentation/cards/vertical_real_estate_card.dart';
import 'package:salegates/presentation/customer/categories/real_estate/real_estate_ad_screen.dart';
import 'package:salegates/presentation/customer/categories/real_estate/widgets/filter_drop_down.dart';

class RealEstateSubcategoryWithAdsScreen extends StatefulWidget {
  const RealEstateSubcategoryWithAdsScreen(
      {super.key, required this.filterValue});
  final String filterValue;

  @override
  State<RealEstateSubcategoryWithAdsScreen> createState() =>
      _RealEstateSubcategoryWithAdsScreenState();
}

class _RealEstateSubcategoryWithAdsScreenState
    extends State<RealEstateSubcategoryWithAdsScreen> {
  final allfilters = [
    {"name": "الكل", "value": "الكل"},
    {"name": "مفروش", "value": "مفروش"},
    {"name": "غير مفروش", "value": "غير مفروش"},
  ];
  final subCategoryFilter = [
    {
      "name": "للبيع",
      "value": "للبيع",
    },
    {
      "name": "للبدل",
      "value": "للبدل",
    },
    {
      "name": "للإيجار",
      "value": "للإيجار",
    },
  ];

  final priceFilter = [
    {
      "name": "1-1,000 KWD",
      "value": "1000",
    },
    {
      "name": "1,000-5,000 KWD",
      "value": "5000",
    },
    {
      "name": "> 5,000 KWD",
      "value": "6000",
    },
  ];

  final roomFilter = [
    {
      "name": "غرف",
      "value": "غرف",
    },
    {
      "name": "1",
      "value": "1",
    },
    {
      "name": "2",
      "value": "2",
    },
    {
      "name": "3",
      "value": "3",
    },
    {
      "name": "4",
      "value": "4",
    },
  ];

  final typeFilter = [
    {
      "name": "سكني",
      "value": "سكني",
    },
    {
      "name": "تجاري",
      "value": "تجاري",
    },
  ];

  List Filters = [];
  String allFilterSelectedValue = "الكل";
  String subCategoryFilterSelectedValue = "للبيع";
  String priceFilterSelectedValue = "1000";
  String roomFilterSelectedValue = "غرف";
  String typeFilterSelectedValue = "سكني";

  final items = [
    {
      "category": "1",
      "image": "assets/images/real_estate.png",
    },
    {
      "category": "1",
      "image": "assets/images/home.png",
    },
    {
      "category": "1",
      "image": "assets/images/comm_ad1.png",
    },
    {
      "category": "1",
      "image": "assets/images/village.png",
    },
    {
      "category": "2",
      "image": "assets/images/banner.png",
    },
    {
      "category": "1",
      "image": "assets/images/house.png",
    },
    {
      "category": "1",
      "image": "assets/images/village.png",
    },
    {
      "category": "1",
      "image": "assets/images/home.png",
    },
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppbarWithTitleWidget(title: "قسم العقارات"),
          Expanded(
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 45.h,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            DropDownFilter(
                              items: allfilters,
                              selectedItem: allFilterSelectedValue,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            DropDownFilter(
                              items: subCategoryFilter,
                              selectedItem: subCategoryFilterSelectedValue,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            DropDownFilter(
                              items: priceFilter,
                              selectedItem: priceFilterSelectedValue,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            DropDownFilter(
                              items: roomFilter,
                              selectedItem: roomFilterSelectedValue,
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            DropDownFilter(
                              items: typeFilter,
                              selectedItem: typeFilterSelectedValue,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextWithAll(text: "كل الإعلانات", onTap: () {}),
                      ),
                      ListView.builder(
                          itemCount: items.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.symmetric(vertical: 5),
                          itemBuilder: (context, index) {
                            if (items[index]["category"] == "1") {
                              return Padding(
                                padding: EdgeInsets.all(5.0.h),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            RealEstateAdScreen(),
                                      ),
                                    );
                                  },
                                  child: VerticalRealEstateCard(
                                    image: items[index]["image"],
                                  ),
                                ),
                              );
                            } else {
                              return Padding(
                                padding: EdgeInsets.all(5.0.h),
                                child: Container(
                                  width: double.infinity,
                                  height: 120.h,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.r),
                                    child: Image.asset(
                                      items[index]["image"]!,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              );
                            }
                          })
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
