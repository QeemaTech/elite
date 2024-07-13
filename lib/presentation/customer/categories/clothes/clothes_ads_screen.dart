import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:salegates/core/widgets/appbar_with_title_widget.dart';
import 'package:salegates/core/widgets/common_widgets.dart';
import 'package:salegates/presentation/cards/vertical_ad_with_rate_card.dart';
import 'package:salegates/presentation/cards/vertical_real_estate_card.dart';
import 'package:salegates/presentation/customer/categories/real_estate/real_estate_ad_screen.dart';
import 'package:salegates/presentation/customer/categories/real_estate/widgets/filter_drop_down.dart';

class ClothesAdsScreen extends StatefulWidget {
  const ClothesAdsScreen({
    super.key,
  });

  @override
  State<ClothesAdsScreen> createState() => _ClothesAdsScreenState();
}

class _ClothesAdsScreenState extends State<ClothesAdsScreen> {
  final allfilters = [
    {"name": "الكل", "value": "الكل"},
    {"name": "مستعمل", "value": "مستعمل"},
    {"name": "جديد", "value": "جديد"},
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
      "name": "1-500 KWD",
      "value": "500",
    },
    {
      "name": "500-1,000 KWD",
      "value": "1000",
    },
    {
      "name": "> 1,000 KWD",
      "value": "5000",
    },
  ];

  List Filters = [];
  String allFilterSelectedValue = "الكل";
  String subCategoryFilterSelectedValue = "للبيع";
  String priceFilterSelectedValue = "500";

  final items = [
    {
      "category": "1",
      "image": "assets/images/women_clothes.png",
    },
    {
      "category": "1",
      "image": "assets/images/watch.png",
    },
    {
      "category": "1",
      "image": "assets/images/menclothes.png",
    },
    {
      "category": "1",
      "image": "assets/images/bag.png",
    },
    {
      "category": "2",
      "image": "assets/images/gift.png",
    },
    {
      "category": "1",
      "image": "assets/images/jwellery.png",
    },
    {
      "category": "1",
      "image": "assets/images/cosmatics.png",
    },
    {
      "category": "1",
      "image": "assets/images/perfum.png",
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
          AppbarWithTitleWidget(title: "قسم الازياء"),
          Expanded(
            child: Padding(
                padding: EdgeInsets.all(20.0.h),
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
                              width: 20.w,
                            ),
                            DropDownFilter(
                              items: subCategoryFilter,
                              selectedItem: subCategoryFilterSelectedValue,
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            DropDownFilter(
                              items: priceFilter,
                              selectedItem: priceFilterSelectedValue,
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      TextWithAll(text: "كل الإعلانات", onTap: () {}),
                      ListView.builder(
                          itemCount: items.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          physics: const NeverScrollableScrollPhysics(),
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
                                  child: VerticalAdWithRateCard(
                                    image: items[index]["image"],
                                    showPrice: true,
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
