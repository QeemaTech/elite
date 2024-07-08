import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/theme/theme.dart';

class ContactButtonWidget extends StatelessWidget {
  const ContactButtonWidget(
      {super.key,
      required this.text,
      required this.icon,
      this.onPressed,
      required this.backgroundColor});
  final String text;
  final String icon;
  final Color backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 50.h,
        width: 100.w,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              height: 20.h,
              color: Colors.white,
            ),
            SizedBox(width: 10.w),
            Text(
              text,
              style: AppTheme.text13Weigh600Black()
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
