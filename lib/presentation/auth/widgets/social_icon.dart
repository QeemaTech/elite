import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salegates/core/theme/colors.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon(
      {super.key, required this.backgroundColor, required this.icon});
  final Color backgroundColor;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      padding: EdgeInsets.all(10.h),
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.iconBorderColor, width: 1),
      ),
      child: SvgPicture.asset(icon),
    );
  }
}
