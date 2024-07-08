import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/theme/theme.dart';

Widget AppButton({
  required VoidCallback onPressed,
  required String text,
}) {
  return MaterialButton(
    onPressed: onPressed,
    height: 60.h,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.r),
    ),
    padding: EdgeInsets.symmetric(horizontal: 20.w),
    minWidth: double.infinity,
    color: AppColors.primary,
    child: Text(
      text,
      style: AppTheme.textButton18WiteWeight600(),
    ),
  );
}

Widget AppButtonWithBorder(
    {required VoidCallback onPressed, required String text, double? height}) {
  return MaterialButton(
    onPressed: onPressed,
    height: height ?? 60.h,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5.r),
      side: BorderSide(color: AppColors.primary),
    ),
    padding: EdgeInsets.symmetric(horizontal: 20.w),
    minWidth: double.infinity,
    //color: AppColors.primary,
    child: Text(
      text,
      style: AppTheme.textButton18WiteWeight600()
          .copyWith(color: AppColors.primary, fontWeight: FontWeight.w500),
    ),
  );
}

Widget AppBarOTPWidget({
  required String title,
  bool showBack = true,
  bool showNotifications = true,
  required BuildContext context,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      showBack
          ? GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                height: 40.h,
                width: 40.h,
                padding: EdgeInsets.all(5.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    border: Border.all(color: AppColors.borderLightGray)),
                child: SvgPicture.asset("assets/svgs/arrow-back.svg"),
              ),
            )
          : SizedBox(
              width: 40.h,
            ),
      Text(
        title,
        style: AppTheme.text18BlackWeight700(),
      ),
      showNotifications
          ? Container(
              height: 40.h,
              width: 40.h,
              padding: EdgeInsets.all(5.h),
              child: SvgPicture.asset("assets/svgs/ring.svg"))
          : SizedBox(
              width: 40.h,
            ),
    ],
  );
}

Widget TextWithAll(
    {required String text,
    required VoidCallback onTap,
    Color? allColor,
    String? allText}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        text,
        style: AppTheme.text18BlackWeight700(),
      ),
      GestureDetector(
        onTap: () {},
        child: Text(allText ?? "عرض الكل",
            style: allColor != null
                ? AppTheme.textBodyprimaryWeight700().copyWith(color: allColor)
                : AppTheme.textBodyprimaryWeight700()),
      ),
    ],
  );
}
