import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salegates/core/theme/colors.dart';

class UserProfileImage extends StatelessWidget {
  const UserProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 144.h,
          width: 144.h,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: AppColors.backgroundColorGray),
          child: DottedBorder(
            borderType: BorderType.Circle,
            dashPattern: const [5, 10],
            color: AppColors.primary,
            child: Container(
              margin: EdgeInsets.only(top: 30.h),
              child: ClipOval(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SvgPicture.asset(
                    "assets/svgs/userplaceholder.svg",
                    fit: BoxFit.cover,
                    height: 200.h,
                    width: 200.h,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
            bottom: 10.h,
            right: 5.h,
            child: Container(
              height: 30.h,
              width: 30.h,
              padding: EdgeInsets.all(6.h),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: SvgPicture.asset("assets/svgs/editpin.svg"),
            ))
      ],
    );
  }
}
