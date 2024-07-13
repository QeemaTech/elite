import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/theme/theme.dart';
import 'package:salegates/presentation/chat/chat_list_screen.dart';
import 'package:salegates/presentation/customer/profile/profile_screen.dart';

class AppBarRowWithTitle extends StatefulWidget {
  const AppBarRowWithTitle(
      {super.key,
      this.title,
      this.removeSearchIcon = false,
      this.isBack = true,
      this.isVendor = false});
  final title;
  final bool? removeSearchIcon;
  final bool? isVendor;
  final bool? isBack;

  @override
  State<AppBarRowWithTitle> createState() => _AppBarRowWithTitleState();
}

class _AppBarRowWithTitleState extends State<AppBarRowWithTitle> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        widget.isBack!
            ? widget.isVendor!
                ? GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProfileScreen(
                              isBack: true,
                            ),
                          ));
                    },
                    child: Container(
                      height: 40.h,
                      width: 40.h,
                      padding: EdgeInsets.all(5.h),
                      child: SvgPicture.asset(
                        "assets/svgs/setting.svg",
                        color: Colors.white,
                      ),
                    ),
                  )
                : GestureDetector(
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
                  )
            : const SizedBox(),
        const SizedBox(),
        Text(
          widget.title,
          style: AppTheme.textBodyWhite15Weight700().copyWith(fontSize: 18.sp),
        ),
        Row(
          children: [
            widget.removeSearchIcon!
                ? const SizedBox()
                : widget.isVendor!
                    ? GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatListScreen(
                              showBack: true,
                            ),
                          ),
                        ),
                        child: Container(
                            height: 40.h,
                            width: 40.h,
                            padding: EdgeInsets.all(5.h),
                            child: SvgPicture.asset(
                              "assets/svgs/chat.svg",
                              color: Colors.white,
                            )),
                      )
                    : Container(
                        height: 40.h,
                        width: 40.h,
                        padding: EdgeInsets.all(5.h),
                        child: SvgPicture.asset(
                          "assets/svgs/search.svg",
                          color: Colors.white,
                        )),
            SizedBox(
              width: 5.w,
            ),
            InkWell(
              onTap: () => setState(() {
                isClicked = !isClicked;
              }),
              child: Container(
                height: 40.h,
                width: 40.h,
                padding: EdgeInsets.all(5.h),
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
                        color: Colors.white,
                      ),
              ),
            )
          ],
        )
      ],
    );
  }
}
