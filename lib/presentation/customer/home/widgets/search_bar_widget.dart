import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/theme/theme.dart';
import 'package:salegates/presentation/search/search_screen.dart';

class SearchWithNotificationWidget extends StatefulWidget {
  SearchWithNotificationWidget(
      {super.key, this.readOnly = true, required this.showBack});
  final bool readOnly;
  final bool showBack;

  @override
  State<SearchWithNotificationWidget> createState() =>
      _SearchWithNotificationWidgetState();
}

class _SearchWithNotificationWidgetState
    extends State<SearchWithNotificationWidget> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (widget.showBack)
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              height: 40.h,
              width: 40.h,
              padding: EdgeInsets.all(5.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  border: Border.all(color: AppColors.borderLightGray)),
              child: SvgPicture.asset(
                "assets/svgs/arrow-back.svg",
                color: Colors.white,
              ),
            ),
          ),
        SizedBox(width: 20.w),
        Expanded(
          child: Container(
            height: 50.h,
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: AppColors.primary),
              borderRadius: BorderRadius.circular(10.h),
            ),
            child: TextField(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchScreen(),
                ),
              ),
              readOnly: widget.readOnly,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: SvgPicture.asset("assets/svgs/camera.svg"),
                  suffixIconConstraints: BoxConstraints.loose(Size(30.h, 30.h)),
                  icon: SvgPicture.asset("assets/svgs/search.svg"),
                  hintText: "بحث",
                  hintStyle: AppTheme.textBody16black39weight400().copyWith(
                    color: AppColors.primary,
                  )),
            ),
          ),
        ),
        SizedBox(width: 20.w),
        InkWell(
          onTap: () {
            setState(() {
              isClicked = !isClicked;
            });
          },
          child: Container(
            height: 50.h,
            width: 50.h,
            padding: EdgeInsets.all(8.h),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: AppColors.primary),
              borderRadius: BorderRadius.circular(10.h),
            ),
            child: isClicked
                ? Badge(
                    smallSize: 12.h,
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(7.h),
                    child: SvgPicture.asset(
                      "assets/svgs/ring_fill.svg",
                      color: Colors.black,
                    ),
                  )
                : SvgPicture.asset(
                    "assets/svgs/ring.svg",
                    color: AppColors.primary,
                  ),
          ),
        )
      ],
    );
  }
}
