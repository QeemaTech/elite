import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salegates/core/theme/colors.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r)),
      child: AnotherCarousel(
        dotSize: 5.h,
        dotIncreaseSize: 2.h,
        dotBgColor: Colors.transparent,
        autoplayDuration: Duration(seconds: 4),
        dotIncreasedColor: AppColors.primary,
        images: [
          Image.asset(
            "assets/images/banner.png",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/images/banner.png",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/images/banner.png",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/images/banner.png",
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
