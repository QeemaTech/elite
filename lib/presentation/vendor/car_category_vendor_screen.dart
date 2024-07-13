import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salegates/core/theme/theme.dart';
import 'package:salegates/core/widgets/appbar_with_title_widget.dart';
import 'package:salegates/presentation/cards/category_card_widget.dart';
import 'package:salegates/presentation/cards/vendor_profile_card.dart';
import 'package:salegates/presentation/cards/vertical_vendor_ad_card.dart';
import 'package:salegates/presentation/customer/categories/real_estate/widgets/contact_button_widget.dart';

class CarCategoryVendorScreen extends StatelessWidget {
  CarCategoryVendorScreen({super.key});

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
        children: [
          AppbarWithTitleWidget(
            title: "قسم السيارات",
            isVendor: true,
          ),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    VendorProfileCard(),
                    ContactButtonWidget(
                        onPressed: () {},
                        width: double.infinity,
                        height: 40.h,
                        text: "مشاركة الصفحة ",
                        icon: "assets/svgs/share.svg",
                        iconColor: Colors.black,
                        textColor: Colors.black,
                        backgroundColor: Colors.white),
                    SizedBox(
                      height: 10.h,
                    ),
                    Divider(),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "اعلاناتي",
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
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "المضاف حديثا",
                      style: AppTheme.textHeading15BlackWeight600(),
                    ),
                    ListView.builder(
                        itemCount: 7,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return VerticalVendorAdCard();
                        })
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
