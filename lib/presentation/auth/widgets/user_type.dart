import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/theme/theme.dart';

class UserTypeWidget extends StatelessWidget {
  UserTypeWidget(
      {super.key,
      required this.selected,
      required this.name,
      required this.image});
  final bool selected;
  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
              width: 1,
              color: selected ? AppColors.primary : AppColors.borderColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            image,
            color: selected ? AppColors.textColor : AppColors.borderColor,
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            name,
            style: AppTheme.text18BlackWeight700().copyWith(
              fontSize: 12.sp,
              color: selected ? AppColors.textColor : AppColors.borderColor,
            ),
          )
        ],
      ),
    );
  }
}
