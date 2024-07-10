import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/theme/theme.dart';

class AddAdUploadPhotosWidget extends StatelessWidget {
  const AddAdUploadPhotosWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "قم بتحميل مايصل الي 20صوره",
          style: AppTheme.text12grayWeight400()
              .copyWith(fontSize: 14, color: AppColors.primary),
        ),
        SizedBox(height: 20.h),
        Container(
          height: 120.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.primary.withOpacity(0.15),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/svgs/add.svg"),
              SizedBox(height: 10.h),
              Text(
                "اضف الصور",
                style: AppTheme.textBodyprimaryWeight700()
                    .copyWith(fontSize: 14.sp),
              )
            ],
          )),
        )
      ],
    );
  }
}
