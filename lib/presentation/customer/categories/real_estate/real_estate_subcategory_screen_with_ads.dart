import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/theme/theme.dart';
import 'package:salegates/core/widgets/appbar_with_title_widget.dart';
import 'package:salegates/presentation/customer/categories/real_estate/widgets/filter_drop_down.dart';

class RealEstateSubcategoryScreen extends StatefulWidget {
  const RealEstateSubcategoryScreen({super.key, required this.filterValue});
  final String filterValue;

  @override
  State<RealEstateSubcategoryScreen> createState() =>
      _RealEstateSubcategoryScreenState();
}

class _RealEstateSubcategoryScreenState
    extends State<RealEstateSubcategoryScreen> {
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
                padding: EdgeInsets.all(20.0.h),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 52.h,
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
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
