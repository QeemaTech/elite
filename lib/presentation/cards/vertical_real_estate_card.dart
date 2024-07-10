import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salegates/core/theme/theme.dart';
import 'package:salegates/presentation/customer/categories/real_estate/real_estate_ad_screen.dart';

class VerticalRealEstateCard extends StatelessWidget {
  const VerticalRealEstateCard({super.key, this.edit = false, this.image});
  final bool? edit;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(8.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6.r),
              child: Image.asset(
                image ?? "assets/images/comm_ad1.png",
                width: 100.w,
                height: 90.h,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "اسم الاعلان هنا",
                  overflow: TextOverflow.ellipsis,
                  style: AppTheme.textBody16black39weight400(),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "44.0" + " " + "KWD",
                  style: AppTheme.textBodyprimaryWeight700()
                      .copyWith(fontSize: 14.sp),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/svgs/bed.svg",
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(
                      "4",
                      style: AppTheme.textBody16black39weight400()
                          .copyWith(fontSize: 12.sp),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    SvgPicture.asset(
                      "assets/svgs/bathroom.svg",
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(
                      "1",
                      style: AppTheme.textBody16black39weight400()
                          .copyWith(fontSize: 12.sp),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    SvgPicture.asset(
                      "assets/svgs/salon.svg",
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(
                      "5",
                      style: AppTheme.textBody16black39weight400()
                          .copyWith(fontSize: 12.sp),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            edit!
                ? GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset("assets/svgs/more.svg"),
                  )
                : GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset("assets/svgs/fav_red.svg")),
          ],
        ),
      ),
    );
  }
}
