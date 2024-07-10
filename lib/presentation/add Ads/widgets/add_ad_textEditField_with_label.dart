import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salegates/core/theme/theme.dart';
import 'package:salegates/presentation/auth/widgets/auth_text_edit.dart';

class TextFieldWithLabel extends StatelessWidget {
  const TextFieldWithLabel({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTheme.textHeading15BlackWeight600(),
        ),
        SizedBox(
          height: 10.h,
        ),
        AuthTextEditing(),
      ],
    );
  }
}
