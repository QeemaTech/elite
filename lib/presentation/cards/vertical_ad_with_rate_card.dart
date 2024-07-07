import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salegates/core/theme/theme.dart';

class VerticalAdWithRateCard extends StatelessWidget {
  const VerticalAdWithRateCard({super.key, this.image});
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
                  "العنوان",
                  style: AppTheme.textBodyprimaryWeight700()
                      .copyWith(fontSize: 14.sp),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    Text(
                      "4.5",
                      style: AppTheme.text12grayWeight400(),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 12.sp,
                    ),
                  ],
                )
              ],
            ),
            Spacer(),
            GestureDetector(
                onTap: () {},
                child: SvgPicture.asset("assets/svgs/fav_red.svg")),
          ],
        ),
      ),
    );
  }
}
