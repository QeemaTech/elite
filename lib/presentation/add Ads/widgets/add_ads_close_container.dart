import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/theme/theme.dart';

class AddAdCloseContainer extends StatelessWidget {
  const AddAdCloseContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      padding: EdgeInsets.all(5.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 1), // changes position of shadow
            )
          ]),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              height: 30.h,
              width: 30.h,
              padding: EdgeInsets.all(5.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: AppColors.primaryLight.withOpacity(0.2)),
              child: SvgPicture.asset(
                "assets/svgs/close.svg",
              ),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            "ادخل معلومات اعلانك",
            style: AppTheme.text12grayWeight400().copyWith(fontSize: 14.sp),
          )
        ],
      ),
    );
  }
}
