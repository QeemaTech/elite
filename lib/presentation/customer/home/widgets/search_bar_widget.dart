import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/theme/theme.dart';

class SearchWithNotificationWidget extends StatelessWidget {
  SearchWithNotificationWidget({super.key, this.readOnly = true});
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 50.h,
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: AppColors.primary),
              borderRadius: BorderRadius.circular(10.h),
            ),
            child: TextField(
              readOnly: readOnly,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: SvgPicture.asset("assets/svgs/camera.svg"),
                  suffixIconConstraints: BoxConstraints.loose(Size(30.h, 30.h)),
                  icon: SvgPicture.asset("assets/svgs/search.svg"),
                  hintText: "بحث",
                  hintStyle: AppTheme.textBody16black39weight400().copyWith(
                    color: AppColors.primary,
                  )),
            ),
          ),
        ),
        SizedBox(width: 20.w),
        Container(
          height: 50.h,
          width: 50.h,
          padding: EdgeInsets.all(8.h),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: AppColors.primary),
            borderRadius: BorderRadius.circular(10.h),
          ),
          child: SvgPicture.asset(
            "assets/svgs/ring.svg",
            color: AppColors.primary,
          ),
        )
      ],
    );
  }
}
