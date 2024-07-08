import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/theme/theme.dart';

class RealEstateSpesWidget extends StatelessWidget {
  RealEstateSpesWidget({super.key});
  final items = [
    {
      "title": "التغطية",
      "value": "5G - 4G -  فايبر",
      "icon": "assets/svgs/signal.svg",
    },
    {
      "title": "المساحة",
      "value": "180 متر مربع",
      "icon": "assets/svgs/measure.svg",
    },
    {
      "title": "العرض",
      "value": "50 متر ",
      "icon": "assets/svgs/tape.svg",
    },
    {
      "title": "الطول",
      "value": "120 متر ",
      "icon": "assets/svgs/tape.svg",
    },
    {
      "title": "الواجهة",
      "value": "غرب",
      "icon": "assets/svgs/eye.svg",
    },
    {
      "title": "الغرف",
      "value": "8",
      "icon": "assets/svgs/bed.svg",
    },
    {
      "title": "الصالات",
      "value": "1",
      "icon": "assets/svgs/salon2.svg",
    },
    {
      "title": "دورات المياه",
      "value": "1",
      "icon": "assets/svgs/bathroom.svg",
    },
    {
      "title": "عرض الشارع",
      "value": "12 متر ",
      "icon": "assets/svgs/tape.svg",
    },
    {
      "title": "عمر العقار",
      "value": "جديد",
      "icon": "assets/svgs/tag.svg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => Divider(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                "${items[index]["icon"]}",
                color: AppColors.primary,
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                "${items[index]["title"]}",
                style: AppTheme.textHeading15BlackWeight600()
                    .copyWith(fontSize: 14.sp),
              ),
              Spacer(),
              Text(
                "${items[index]["value"]}",
                style: AppTheme.text12grayWeight500(),
              ),
            ],
          ),
        );
      },
    );
  }
}
