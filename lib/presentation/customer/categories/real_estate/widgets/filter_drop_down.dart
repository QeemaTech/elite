import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/theme/theme.dart';

class DropDownFilter extends StatefulWidget {
  DropDownFilter({super.key, required this.items, required this.selectedItem});
  final List<Map<String, String>> items;
  String selectedItem;

  @override
  State<DropDownFilter> createState() => _DropDownFilterState();
}

class _DropDownFilterState extends State<DropDownFilter> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 105.w,
      child: Container(
        padding: EdgeInsets.all(8.h),
        height: 40.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: AppColors.primaryLight,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: DropdownButton(
          onChanged: (value) => setState(() {
            widget.selectedItem = value.toString();
          }),
          isExpanded: true,
          style: AppTheme.textBodyprimaryWeight700(),
          underline: const SizedBox(),
          icon: const Icon(
            Icons.keyboard_arrow_down,
            color: AppColors.primary,
          ),
          iconSize: 30.h,
          value: widget.selectedItem,
          items: widget.items.map((filter) {
            return DropdownMenuItem<String>(
              value: filter["value"],
              child: Text(
                filter["name"]!,
                style: AppTheme.textBodyprimaryWeight700()
                    .copyWith(fontSize: 13.sp),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
