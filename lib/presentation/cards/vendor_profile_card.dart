import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/theme/theme.dart';

class VendorProfileCard extends StatelessWidget {
  const VendorProfileCard({super.key, this.isCustomer});
  final bool? isCustomer;

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.white,
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(8.h),
        child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Container(
              height: 70.h,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: ClipOval(
                  child: Image.asset("assets/images/profile_avatar.png")),
            ),
            title: Text(
              "بوتيك الحمد",
              style: AppTheme.textHeading15BlackWeight600(),
            ),
            subtitle: Text(
              "0100 0000 000",
              style:
                  AppTheme.text12grayWeight400().copyWith(color: Colors.black),
            ),
            trailing: Container(
              width: isCustomer! ? 45.w : 90.w,
              height: isCustomer! ? 35.h : 40.h,
              padding: EdgeInsets.all(5.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                border: Border.all(color: AppColors.primary),
                color: Colors.white,
              ),
              child: isCustomer!
                  ? Padding(
                      padding: EdgeInsets.all(1.0.w),
                      child: SvgPicture.asset(
                        "assets/svgs/like.svg",
                        fit: BoxFit.contain,
                      ),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset("assets/svgs/ad.svg"),
                        Text(
                          "159",
                          style: AppTheme.text13Weigh600Black().copyWith(
                              color: AppColors.primary, fontSize: 12.sp),
                        ),
                        Text(
                          "اعلان",
                          style: AppTheme.text13Weigh600Black().copyWith(
                              color: AppColors.primary, fontSize: 12.sp),
                        )
                      ],
                    ),
            )),
      ),
    );
  }
}
