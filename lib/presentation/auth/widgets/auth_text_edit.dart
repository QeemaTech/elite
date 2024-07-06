import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salegates/core/theme/colors.dart';

class AuthTextEditing extends StatelessWidget {
  AuthTextEditing({
    super.key,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.suffixIcon = const SizedBox.shrink(),
    this.readOnly = false,
  });
  final String hintText;
  TextInputType keyboardType;
  Widget suffixIcon;
  bool readOnly;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.borderColor,
          width: 1,
        ),
      ),
      child: TextField(
        readOnly: readOnly,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
