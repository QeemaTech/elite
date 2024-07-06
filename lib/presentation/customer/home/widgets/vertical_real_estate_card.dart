import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salegates/core/theme/theme.dart';

class VerticalRealEstateCard extends StatelessWidget {
  const VerticalRealEstateCard({super.key});

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
                "assets/images/comm_ad1.png",
                width: 100.w,
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
                Text(
                  "44.0" + " " + "KWD",
                  style: AppTheme.textBodyprimaryWeight700()
                      .copyWith(fontSize: 14.sp),
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
            SvgPicture.asset("assets/svgs/fav_red.svg"),
          ],
        ),
      ),
    );
  }
}
