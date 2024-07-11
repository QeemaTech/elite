import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/theme/theme.dart';

class AuthTextEditing extends StatelessWidget {
  AuthTextEditing({
    super.key,
    this.hintText,
    this.keyboardType = TextInputType.text,
    this.suffixIcon = const SizedBox.shrink(),
    this.readOnly = false,
    this.backgroundColor,
    this.hintTextColor,
    this.maxLength,
    this.maxLines,
  });
  final String? hintText;
  TextInputType keyboardType;
  Widget suffixIcon;
  bool readOnly;
  Color? backgroundColor;
  Color? hintTextColor;
  int? maxLines;
  int? maxLength;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: backgroundColor ?? Colors.white,
        border: Border.all(
          color: AppColors.borderColor,
          width: 1,
        ),
      ),
      child: TextField(
        readOnly: readOnly,
        keyboardType: keyboardType,
        maxLength: maxLength,
        maxLines: maxLines,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: hintTextColor != null
              ? AppTheme.text13Weigh600Black().copyWith(color: hintTextColor)
              : AppTheme.textBody16black39weight400(),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
