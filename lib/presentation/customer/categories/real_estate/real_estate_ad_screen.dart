import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/theme/theme.dart';
import 'package:salegates/core/widgets/appbar_with_title_widget.dart';
import 'package:salegates/core/widgets/common_widgets.dart';
import 'package:salegates/presentation/cards/ad_company_card_with_rate.dart';
import 'package:salegates/presentation/cards/vertical_real_estate_card.dart';
import 'package:salegates/presentation/customer/categories/real_estate/widgets/contact_button_widget.dart';
import 'package:salegates/presentation/customer/categories/real_estate/widgets/real_estate_spes_widget.dart';

class RealEstateAdScreen extends StatefulWidget {
  RealEstateAdScreen({
    super.key,
    this.isEdit = false,
  });
  final bool isEdit;

  @override
  State<RealEstateAdScreen> createState() => _RealEstateAdScreenState();
}

class _RealEstateAdScreenState extends State<RealEstateAdScreen> {
  bool isExtend = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppbarWithTitleWidget(
            title: "اسم الاعلان",
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20.h),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.r),
                      child: Image.asset(
                        "assets/images/village.png",
                        fit: BoxFit.cover,
                        height: 180.h,
                        width: double.infinity,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextWithAll(
                        text: "اسم الاعلان هنا",
                        allText: "4.0 KWD",
                        onTap: () {}),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(children: [
                      SvgPicture.asset(
                        "assets/svgs/location.svg",
                        height: 20.h,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "19 احمد الصاوي , مكرم عبيد , مدينه نصر , القاهرة",
                        style: AppTheme.text12grayWeight500(),
                      ),
                    ]),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(children: [
                      SvgPicture.asset(
                        "assets/svgs/watch.svg",
                        height: 15.h,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "المشاهدات",
                        style: AppTheme.text12grayWeight500(),
                      ),
                      Spacer(),
                      Text(
                        "1,120",
                        style: AppTheme.text12grayWeight500()
                            .copyWith(color: AppColors.primary),
                      ),
                    ]),
                    SizedBox(
                      height: 20.h,
                    ),
                    isExtend
                        ? RealEstateSpesWidget()
                        : Row(
                            children: [
                              SvgPicture.asset(
                                "assets/svgs/bed.svg",
                                fit: BoxFit.contain,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "4",
                                style: AppTheme.textBody16black39weight400()
                                    .copyWith(fontSize: 12.sp),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              SvgPicture.asset(
                                "assets/svgs/bathroom.svg",
                                fit: BoxFit.contain,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "1",
                                style: AppTheme.textBody16black39weight400()
                                    .copyWith(fontSize: 12.sp),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              SvgPicture.asset(
                                "assets/svgs/salon.svg",
                                fit: BoxFit.contain,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "5",
                                style: AppTheme.textBody16black39weight400()
                                    .copyWith(fontSize: 12.sp),
                              ),
                            ],
                          ),
                    SizedBox(
                      height: 20.h,
                    ),
                    AppButtonWithBorder(
                        onPressed: () {
                          setState(() {
                            isExtend = !isExtend;
                          });
                        },
                        text:
                            isExtend ? "اخفاء التفاصيل" : "مشاهدة كل التفاصيل",
                        height: 50.h),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text("الوصف",
                        style: AppTheme.textHeading15BlackWeight600()),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "وصف العقار كامل هنا مثال شقه مساحة 180 متر تحتوي علي 8 غرف كبيره و صاله كبيره و منها 3 غرف ماستر بها حمام مننفصل",
                      style: AppTheme.text12grayWeight500(),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const AdCompanyCardWithRate(),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextWithAll(text: "عقارات مشابهة", onTap: () {}),
                    SizedBox(
                      height: 20.h,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return VerticalRealEstateCard();
                      },
                      itemCount: 10,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: widget.isEdit
          ? Container(
              height: 60.h,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ContactButtonWidget(
                      icon: "assets/svgs/editpin.svg",
                      iconColor: Colors.white,
                      text: "تعديل",
                      backgroundColor: AppColors.primary,
                      width: 160.w,
                      onPressed: () {},
                    ),
                    SizedBox(width: 10.w),
                    ContactButtonWidget(
                      icon: "assets/svgs/delete2.svg",
                      iconColor: Colors.red,
                      text: "حذف",
                      textColor: Colors.red,
                      borderColor: Colors.red,
                      width: 160.w,
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            builder: (context) {
                              return DeleteAdBottomSheet();
                            });
                      },
                      backgroundColor: Colors.white,
                    ),
                  ],
                ),
              ),
            )
          : Container(
              height: 60.h,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ContactButtonWidget(
                      icon: "assets/svgs/phone.svg",
                      text: "اتصال",
                      backgroundColor: AppColors.primary,
                      onPressed: () {},
                    ),
                    SizedBox(width: 10.w),
                    ContactButtonWidget(
                      icon: "assets/svgs/massenger.svg",
                      text: "دردشة",
                      onPressed: () {},
                      backgroundColor: AppColors.blueMessenger,
                    ),
                    SizedBox(width: 10.w),
                    ContactButtonWidget(
                      icon: "assets/svgs/whatsapp.svg",
                      text: "واتس اب",
                      onPressed: () {},
                      backgroundColor: AppColors.greenWhatsapp,
                    ),
                  ],
                ),
              ),
            ),
    );
  }

  Widget DeleteAdBottomSheet() {
    return Container(
        height: 600.h,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(20.0.h),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: 30.h,
            ),
            SvgPicture.asset(
              "assets/svgs/delete2.svg",
              height: 130.h,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "اذكر سبب الحذف",
              style: AppTheme.text18BlackWeight700(),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'سوف يتم تحويلك الي صفحة الاعلانات الخاص بك لادارتها ',
              textAlign: TextAlign.center,
              style: AppTheme.text12grayWeight500(),
            ),
            SizedBox(
              height: 20.h,
            ),
            AppButton(onPressed: () {}, text: "تم البيع", height: 50.h),
            SizedBox(
              height: 10.h,
            ),
            AppButtonWithBorder(
                onPressed: () {},
                text: "تم الايجار",
                height: 50.h,
                backgroundColor: AppColors.primaryLight),
            SizedBox(
              height: 10.h,
            ),
            AppButtonWithBorder(
                onPressed: () {},
                text: "سبب اخر",
                height: 50.h,
                backgroundColor: AppColors.primaryLight),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 60.h,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: AppButton(
                      onPressed: () {},
                      text: "حسنا",
                      height: 50.h,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    flex: 1,
                    child: AppButtonWithBorder(
                      onPressed: () {},
                      text: "الغاء",
                      height: 50.h,
                      borderColor: Colors.red,
                      textColor: Colors.red,
                    ),
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}
