import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/theme/theme.dart';
import 'package:salegates/core/widgets/appbar_row_widge_with_Title.dart';
import 'package:salegates/presentation/auth/widgets/auth_text_edit.dart';

class SearchHeaderWidget extends StatefulWidget {
  const SearchHeaderWidget({super.key, this.showBack = false});
  final bool showBack;

  @override
  State<SearchHeaderWidget> createState() => _SearchHeaderWidgetState();
}

class _SearchHeaderWidgetState extends State<SearchHeaderWidget> {
  var selectedFilterValue = "all";
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 210.h,
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
          child: AppBarRowWithTitle(
            title: "بحث",
          ),
        ),
        Positioned(
          top: 130.h,
          left: 20.h,
          right: 20.h,
          child: Container(
            // padding: EdgeInsets.all(8.h),
            height: 50.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: AuthTextEditing(
              hintText: "كلمه البحث",
            ),
          ),
        )
      ],
    );
  }
}
