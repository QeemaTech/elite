import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/theme/theme.dart';

class AppBarRowWithTitle extends StatelessWidget {
  const AppBarRowWithTitle(
      {super.key,
      this.title,
      this.removeSearchIcon = false,
      this.isBack = true,
      this.isVendor = false});
  final title;
  final bool? removeSearchIcon;
  final bool? isVendor;
  final bool? isBack;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        isBack!
            ? isVendor!
                ? GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 40.h,
                      width: 40.h,
                      padding: EdgeInsets.all(5.h),
                      child: SvgPicture.asset(
                        "assets/svgs/setting.svg",
                        color: Colors.white,
                      ),
                    ),
                  )
                : GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      height: 40.h,
                      width: 40.h,
                      padding: EdgeInsets.all(5.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          border: Border.all(color: AppColors.borderLightGray)),
                      child: SvgPicture.asset(
                        "assets/svgs/arrow-back.svg",
                        color: Colors.white,
                      ),
                    ),
                  )
            : SizedBox(),
        Text(
          title,
          style: AppTheme.textBodyWhite15Weight700().copyWith(fontSize: 18.sp),
        ),
        Row(
          children: [
            removeSearchIcon!
                ? SizedBox()
                : Container(
                    height: 40.h,
                    width: 40.h,
                    padding: EdgeInsets.all(5.h),
                    child: SvgPicture.asset(
                      "assets/svgs/search.svg",
                      color: Colors.white,
                    )),
            SizedBox(
              width: 5.w,
            ),
            Container(
                height: 40.h,
                width: 40.h,
                padding: EdgeInsets.all(5.h),
                child: SvgPicture.asset(
                  "assets/svgs/ring.svg",
                  color: Colors.white,
                )),
          ],
        )
      ],
    );
  }
}
