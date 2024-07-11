import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/theme/theme.dart';
import 'package:salegates/core/widgets/appbar_with_title_widget.dart';
import 'package:salegates/presentation/cards/ad_company_card_with_rate.dart';
import 'package:salegates/presentation/cards/pin_car_vendor_card.dart';
import 'package:salegates/presentation/cards/vendor_profile_card.dart';
import 'package:salegates/presentation/customer/categories/real_estate/widgets/contact_button_widget.dart';

class BoutiqueScreen extends StatelessWidget {
  const BoutiqueScreen({super.key, this.isCustomer = false});
  final bool? isCustomer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            AppbarWithTitleWidget(
              title: "بوتيك",
              isVendor: !isCustomer!,
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
                        VendorProfileCard(isCustomer: isCustomer!),
                        ContactButtonWidget(
                            onPressed: () {},
                            width: double.infinity,
                            height: 40.h,
                            text: "مشاركة صفحة البوتيك",
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
                        isCustomer!
                            ? Column(
                                children: [
                                  SizedBox(
                                    height: 80.h,
                                    child: ListView.builder(
                                        itemCount: 8,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) {
                                          return Container(
                                            height: 70.h,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: AppColors.primary,
                                                    width: 1.5)),
                                            child: CircleAvatar(
                                              radius: 42.h,
                                              backgroundImage: AssetImage(
                                                "assets/images/car2.png",
                                              ),
                                            ),
                                          );
                                        }),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Divider(),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                ],
                              )
                            : SizedBox(),
                        Text(
                          "اعلانات مثبتة",
                          style: AppTheme.textHeading15BlackWeight600(),
                        ),
                        SizedBox(
                          height: 200,
                          child: ListView.builder(
                              itemCount: 4,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return SizedBox(
                                    width: 200.w, child: PinCarCardVendor());
                              }),
                        ),
                        Divider(),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "المنتجات",
                          style: AppTheme.textHeading15BlackWeight600(),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        GridView.builder(
                          itemCount: 9,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.9,
                          ),
                          itemBuilder: (context, index) {
                            return PinCarCardVendor(
                              image: "assets/images/car2.png",
                            );
                          },
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
        bottomNavigationBar: isCustomer!
            ? Container(
                height: 60.h,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ContactButtonWidget(
                        icon: "assets/svgs/wallet.svg",
                        iconColor: AppColors.primary,
                        text: "اتمام الشراء",
                        backgroundColor: AppColors.borderPrimaryhalf,
                        textColor: AppColors.primary,
                        width: 110.w,
                        onPressed: () {},
                      ),
                      SizedBox(width: 10.w),
                      ContactButtonWidget(
                        icon: "assets/svgs/website.svg",
                        iconColor: Color(0xff1962BC),
                        borderColor: Color(0xff1962BC),
                        text: "الموقع",
                        backgroundColor: Color(0xff1962BC).withOpacity(0.2),
                        textColor: Color(0xff1962BC),
                        width: 110.w,
                        onPressed: () {},
                      ),
                      SizedBox(width: 10.w),
                      ContactButtonWidget(
                        icon: "assets/svgs/whatsapp.svg",
                        iconColor: AppColors.greenWhatsapp,
                        text: "الموقع",
                        backgroundColor:
                            AppColors.greenWhatsapp.withOpacity(0.2),
                        textColor: AppColors.greenWhatsapp,
                        borderColor: AppColors.greenWhatsapp,
                        width: 110.w,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ))
            : null);
  }
}
