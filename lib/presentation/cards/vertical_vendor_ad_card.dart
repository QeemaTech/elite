import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/theme/theme.dart';
import 'package:salegates/presentation/customer/categories/real_estate/widgets/contact_button_widget.dart';

class VerticalVendorAdCard extends StatelessWidget {
  const VerticalVendorAdCard({super.key, this.image});
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
                image ?? "assets/images/tiger.png",
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
                  "\$45741",
                  style: AppTheme.textBodyprimaryWeight700()
                      .copyWith(fontSize: 14.sp),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "عنوان المكان هنا",
                  overflow: TextOverflow.ellipsis,
                  style: AppTheme.textBody16black39weight400(),
                ),
              ],
            ),
            Spacer(),
            SizedBox(
              width: 80.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ContactButtonWidget(
                      text: "تعديل",
                      icon: "assets/svgs/editpin.svg",
                      iconColor: Colors.white,
                      height: 35.h,
                      backgroundColor: AppColors.primary),
                  SizedBox(
                    height: 10.h,
                  ),
                  ContactButtonWidget(
                      text: "حذف",
                      icon: "assets/svgs/close.svg",
                      iconColor: Colors.red,
                      textColor: Colors.red,
                      borderColor: Colors.red,
                      height: 35.h,
                      backgroundColor: Colors.white),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
