import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/theme/theme.dart';

class PinCarCardVendor extends StatelessWidget {
  const PinCarCardVendor({super.key, this.image, this.width});
  final String? image;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190.h,
      child: Card(
        surfaceTintColor: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 110.h,
              width: double.infinity,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(10.r)),
                    child: Image.asset(
                      image ?? "assets/images/car3.png",
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Positioned(
                      top: 10.h,
                      right: 10.h,
                      child: Container(
                        height: 25.h,
                        width: 30.h,
                        child: Center(
                          child: SvgPicture.asset("assets/svgs/pushpin.svg"),
                        ),
                        decoration: BoxDecoration(
                            color: AppColors.orangeColor,
                            borderRadius: BorderRadius.circular(3.r)),
                      )),
                  Positioned(
                      top: 10.h,
                      left: 10.h,
                      child: Container(
                        height: 25.h,
                        width: 60.h,
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("159"),
                              SvgPicture.asset("assets/svgs/eyew.svg"),
                            ]),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3.r)),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'سيارة لوتس الترا الجديدة',
                    style: AppTheme.text12grayWeight500().copyWith(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    '\$100,120.99',
                    style: AppTheme.text12grayWeight500().copyWith(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                  Row(children: [
                    SvgPicture.asset("assets/svgs/calendar.svg"),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "Sat 6 April, 2024",
                      style: AppTheme.text12grayWeight500(),
                    ),
                  ])
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
