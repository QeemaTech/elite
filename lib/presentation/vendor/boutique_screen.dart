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
import 'package:salegates/presentation/customer/home/widgets/story_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class BoutiqueScreen extends StatelessWidget {
  const BoutiqueScreen({super.key, this.isCustomer = false});
  final bool? isCustomer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            AppbarWithTitleWidget(
              title: "Gallary",
              isVendor: !isCustomer!,
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.w),
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
                        const Divider(),
                        SizedBox(
                          height: 10.h,
                        ),
                        isCustomer!
                            ? Column(
                                children: [
                                  SizedBox(
                                    height: 100.h,
                                    child: ListView.builder(
                                        itemCount: 9,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) {
                                          return (index == 0)
                                              ? Container(
                                                  height: 70.h,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                          color:
                                                              AppColors.primary,
                                                          width: 1.5)),
                                                  padding:
                                                      const EdgeInsets.all(30),
                                                  child: GestureDetector(
                                                    onTap: () => Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                StoryScreen())),
                                                    child: const Icon(
                                                      Icons.add,
                                                      size: 50,
                                                    ),
                                                  ),
                                                )
                                              : Container(
                                                  height: 70.h,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                          color:
                                                              AppColors.primary,
                                                          width: 1.5)),
                                                  child: GestureDetector(
                                                    onTap: () => Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                StoryScreen())),
                                                    child: CircleAvatar(
                                                      radius: 55.h,
                                                      backgroundImage:
                                                          const AssetImage(
                                                        "assets/images/car2.png",
                                                      ),
                                                    ),
                                                  ),
                                                );
                                        }),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  const Divider(),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                ],
                              )
                            : const SizedBox(),
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
                                    width: 200.w,
                                    child: const PinCarCardVendor());
                              }),
                        ),
                        const Divider(),
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
                          itemCount: 14,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  mainAxisSpacing: 4,
                                  childAspectRatio: 0.7,
                                  crossAxisSpacing: 4),
                          itemBuilder: (context, index) {
                            return const PinCarCardVendor(
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
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      SizedBox(width: 10.w),
                      ContactButtonWidget(
                        icon: "assets/svgs/website.svg",
                        iconColor: const Color(0xff1962BC),
                        borderColor: const Color(0xff1962BC),
                        text: "الموقع",
                        backgroundColor:
                            const Color(0xff1962BC).withOpacity(0.2),
                        textColor: const Color(0xff1962BC),
                        width: 110.w,
                        onPressed: () {
                          launch("https://google.com");
                        },
                      ),
                      SizedBox(width: 10.w),
                      ContactButtonWidget(
                        icon: "assets/svgs/whatsapp.svg",
                        iconColor: AppColors.greenWhatsapp,
                        text: "واتس اب",
                        backgroundColor:
                            AppColors.greenWhatsapp.withOpacity(0.2),
                        textColor: AppColors.greenWhatsapp,
                        borderColor: AppColors.greenWhatsapp,
                        width: 110.w,
                        onPressed: () {
                          launch("https://wa.me/+201000000000");
                        },
                      ),
                    ],
                  ),
                ))
            : null);
  }
}
