import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salegates/core/theme/theme.dart';

class HorizontalRealEstateCard extends StatelessWidget {
  const HorizontalRealEstateCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(horizontal: 8.w),
        child: Padding(
          padding: EdgeInsets.all(8.0.h),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6.r),
                child: Image.asset(
                  "assets/images/real_estate.png",
                  height: 120.h,
                  width: 180.w,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 40.h,
                width: 180.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "اسم الاعلان هنا",
                      overflow: TextOverflow.ellipsis,
                      style: AppTheme.textBody16black39weight400()
                          .copyWith(fontSize: 13.sp),
                    ),
                    Text(
                      "44.0 KWD",
                      style: AppTheme.textBodyprimaryWeight700()
                          .copyWith(fontSize: 13.sp),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 180.w,
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/svgs/bed.svg",
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(
                      "4",
                      style: AppTheme.textBody16black39weight400()
                          .copyWith(fontSize: 12.sp),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    SvgPicture.asset(
                      "assets/svgs/bathroom.svg",
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(
                      "1",
                      style: AppTheme.textBody16black39weight400()
                          .copyWith(fontSize: 12.sp),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    SvgPicture.asset(
                      "assets/svgs/salon.svg",
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(
                      "5",
                      style: AppTheme.textBody16black39weight400()
                          .copyWith(fontSize: 12.sp),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
