import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/presentation/customer/home/widgets/search_bar_widget.dart';

class HeaderProfileWidget extends StatelessWidget {
  const HeaderProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 220.h,
          width: double.infinity,
          padding: EdgeInsets.all(20.h),
          decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(20.r)),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/homebackground.png"))),
        ),
        Positioned(
          top: 50.h,
          left: 20,
          right: 20,
          child: SearchWithNotificationWidget(),
        ),
        Positioned(
            bottom: -30.h,
            left: 145.w,
            child: Stack(
              children: [
                Container(
                  height: 110.h,
                  width: 100.w,
                  padding: EdgeInsets.only(
                    top: 10.h,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(color: AppColors.borderColor)),
                  child: Image.asset(
                    "assets/images/profile_avatar.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    bottom: 5.h,
                    right: 2.w,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(3.h),
                        height: 28.h,
                        width: 28.w,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: AppColors.borderLightGray),
                            shape: BoxShape.circle,
                            color: Colors.white),
                        child: SvgPicture.asset("assets/svgs/camera.svg"),
                      ),
                    ))
              ],
            ))
      ],
    );
  }
}
