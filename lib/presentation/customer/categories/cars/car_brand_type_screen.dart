import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/theme/theme.dart';
import 'package:salegates/core/widgets/appbar_with_title_widget.dart';
import 'package:salegates/core/widgets/common_widgets.dart';
import 'package:salegates/presentation/add%20Ads/add_ad_general_screen.dart';
import 'package:salegates/presentation/cards/category_card_widget.dart';

class CarBrandScreen extends StatefulWidget {
  const CarBrandScreen({super.key});

  @override
  State<CarBrandScreen> createState() => _CarBrandScreenState();
}

class _CarBrandScreenState extends State<CarBrandScreen> {
  final carBrands = [
    {
      "id": "1",
      "title": "فورد",
      "image": "assets/images/ford.png",
    },
    {
      "id": "2",
      "title": "ميني كوبر",
      "image": "assets/images/mini.png",
    },
    {
      "id": "3",
      "title": "رينو",
      "image": "assets/images/renault.png",
    },
    {
      "id": "4",
      "title": "هوندا",
      "image": "assets/images/honda.png",
    },
    {
      "id": "5",
      "title": "اودي",
      "image": "assets/images/audi.png",
    },
    {
      "id": "6",
      "title": "مازدا",
      "image": "assets/images/mazda.png",
    },
    {
      "id": "7",
      "title": "بي ام دبليو",
      "image": "assets/images/bmw.png",
    },
    {
      "id": "8",
      "title": "هيونداي",
      "image": "assets/images/hyundai.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppbarWithTitleWidget(
            title: " سيارات",
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20.h),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "حدد ماركه السياره",
                      style: AppTheme.textHeading15BlackWeight600(),
                    ),
                    GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: carBrands.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                        ),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.all(5.0.h),
                            child: GestureDetector(
                              onTap: () {},
                              child: CategoryCardWidget(
                                  title: carBrands[index]["title"]!,
                                  image: carBrands[index]["image"]!),
                            ),
                          );
                        }),
                    SizedBox(height: 20.h),
                    Text(
                      "اختر الفئة",
                      style: AppTheme.textHeading15BlackWeight600(),
                    ),
                    SizedBox(height: 10.h),
                    DropdownButtonFormField(
                      decoration: InputDecoration(
                        border: AppTheme.dropDownBorder(),
                        enabledBorder: AppTheme.dropDownBorder(),
                        focusedBorder: AppTheme.dropDownBorder(),
                      ),

                      onChanged: (value) => setState(() {}),
                      //isExpanded: true,
                      style: AppTheme.text12grayWeight500(),
                      icon: const Icon(
                        Icons.keyboard_arrow_down,
                        color: AppColors.primary,
                      ),
                      iconSize: 30.h,
                      value: "ford",
                      items: [
                        const DropdownMenuItem(
                          child: Text("فورد تورس"),
                          value: "ford",
                        ),
                      ].toList(),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      "اختر السنة",
                      style: AppTheme.textHeading15BlackWeight600(),
                    ),
                    SizedBox(height: 10.h),
                    DropdownButtonFormField(
                      decoration: InputDecoration(
                        border: AppTheme.dropDownBorder(),
                        enabledBorder: AppTheme.dropDownBorder(),
                        focusedBorder: AppTheme.dropDownBorder(),
                      ),

                      onChanged: (value) => setState(() {}),
                      //isExpanded: true,
                      style: AppTheme.text12grayWeight500(),
                      icon: const Icon(
                        Icons.keyboard_arrow_down,
                        color: AppColors.primary,
                      ),
                      iconSize: 30.h,
                      value: "2024",
                      items: [
                        const DropdownMenuItem(
                          child: Text("2024"),
                          value: "2024",
                        ),
                      ].toList(),
                    ),
                    SizedBox(
                      height: 100.h,
                    ),
                    AppButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddGeneralAdScreen()));
                        },
                        text: "التالي"),
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
