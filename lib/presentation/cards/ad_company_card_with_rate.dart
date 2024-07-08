import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/theme/theme.dart';

class AdCompanyCardWithRate extends StatelessWidget {
  const AdCompanyCardWithRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.white,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(8.h),
        child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Container(
              height: 70.h,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: ClipOval(
                  child: Image.asset("assets/images/profile_avatar.png")),
            ),
            title: Text(
              " اسم الشركة هنا",
              style: AppTheme.textHeading15BlackWeight600(),
            ),
            subtitle: Text(
              "عضو منذ 2020",
              style: AppTheme.text12grayWeight400(),
            ),
            trailing: Container(
              width: 75.w,
              height: 40.h,
              padding: EdgeInsets.all(5.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: Color(0xffEEEEEE),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "4.8",
                    style: AppTheme.textHeading15BlackWeight600(),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  )
                ],
              ),
            )),
      ),
    );
  }
}
