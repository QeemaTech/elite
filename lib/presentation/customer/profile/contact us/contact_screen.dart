import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/theme/theme.dart';
import 'package:salegates/core/widgets/appbar_with_title_widget.dart';
import 'package:salegates/core/widgets/common_widgets.dart';
import 'package:salegates/presentation/auth/widgets/auth_text_edit.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppbarWithTitleWidget(
            title: "تقديم شكوى",
          ),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20.0.h),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "الاسم",
                      style: AppTheme.text13Weigh600Black(),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    AuthTextEditing(
                      hintText: "أسامة محمد دياب",
                      backgroundColor: AppColors.primaryLight,
                      hintTextColor: Colors.black,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      "البريد الالكتروني",
                      style: AppTheme.text13Weigh600Black()
                          .copyWith(color: Colors.black),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    AuthTextEditing(
                      hintText: "ex@gmail.com",
                      backgroundColor: AppColors.primaryLight,
                      hintTextColor: Colors.black,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      "تفاصيل الشكوى",
                      style: AppTheme.text13Weigh600Black()
                          .copyWith(color: Colors.black),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 8,
                      maxLength: 500,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.h),
                            borderSide:
                                BorderSide(color: AppColors.borderColor)),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    AppButton(onPressed: () {}, text: "حفظ")
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
