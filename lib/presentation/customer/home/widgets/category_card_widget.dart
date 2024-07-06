import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/theme/theme.dart';

class CategoryCardWidget extends StatelessWidget {
  const CategoryCardWidget(
      {super.key, required this.title, required this.image});
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        border: Border.all(
          color: AppColors.borderPrimaryhalf,
        ),
        color: AppColors.primaryLight,
      ),
      child: Padding(
          padding: EdgeInsets.all(10.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                image,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 15.h),
              Text(
                title,
                style: AppTheme.text18BlackWeight700()
                    .copyWith(fontSize: 13.sp, fontWeight: FontWeight.w800),
              )
            ],
          )),
    );
  }
}
