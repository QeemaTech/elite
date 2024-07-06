import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/theme/theme.dart';
import 'package:salegates/core/widgets/appbar_with_search_widget.dart';

class BillsScreen extends StatelessWidget {
  BillsScreen({super.key});
  final List<String> logos = [
    "assets/images/vodafon_logo.png",
    "assets/images/etisalat_logo.png",
    "assets/images/vodafon_logo.png",
    "assets/images/etisalat_logo.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppbarWithSearchWidget(),
          SizedBox(
            height: 20.h,
          ),
          Container(
            padding: EdgeInsets.all(20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "فواتير اتصالات",
                  style:
                      AppTheme.text18BlackWeight700().copyWith(fontSize: 15.sp),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 110.h,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Container(
                            height: 110.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: AppColors.primaryLight,
                            ),
                            child: Center(
                              child: Image.asset(logos[index]),
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "فواتير اتصالات",
                  style:
                      AppTheme.text18BlackWeight700().copyWith(fontSize: 15.sp),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 110.h,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Container(
                            height: 110.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: AppColors.primaryLight,
                            ),
                            child: Center(
                              child: Image.asset(logos[index]),
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
