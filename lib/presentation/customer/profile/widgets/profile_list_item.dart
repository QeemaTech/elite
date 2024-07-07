import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/theme/theme.dart';

class ProfileListItem extends StatelessWidget {
  const ProfileListItem(
      {super.key, required this.text, required this.icon, this.onPressed});
  final String text;
  final String icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Row(
        children: [
          SizedBox(
            width: 20.w,
          ),
          SvgPicture.asset(
            icon,
            height: 20.h,
            width: 20.h,
            color: AppColors.primary,
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            text,
            style: AppTheme.text18BlackWeight700().copyWith(fontSize: 15.sp),
          )
        ],
      ),
    );
  }
}
