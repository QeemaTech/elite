import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/theme/theme.dart';
import 'package:salegates/core/widgets/common_widgets.dart';
import 'package:salegates/presentation/auth/widgets/auth_text_edit.dart';
import 'package:salegates/presentation/customer/profile/widgets/edit_profile_header_widget.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const EditProfileHeaderWidget(),
          SizedBox(
            height: 30.h,
          ),
          Container(
            padding: EdgeInsets.all(20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "الاسم",
                  style: AppTheme.text13Weigh600Black()
                      .copyWith(color: Colors.black),
                ),
                SizedBox(
                  height: 10.h,
                ),
                AuthTextEditing(
                  hintText: "أسامة محمد دياب",
                  backgroundColor: AppColors.primaryLight,
                  hintTextColor: Colors.black,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset("assets/svgs/name_icon.svg"),
                  ),
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
                  hintText: "@gmail.com",
                  backgroundColor: AppColors.primaryLight,
                  hintTextColor: Colors.black,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "رقم الهاتف",
                  style: AppTheme.text13Weigh600Black()
                      .copyWith(color: Colors.black),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: AuthTextEditing(
                        hintText: "05123546513",
                        keyboardType: TextInputType.number,
                        backgroundColor: AppColors.primaryLight,
                        hintTextColor: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.primaryLight,
                        border: Border.all(
                          color: AppColors.borderColor,
                          width: 1,
                        ),
                      ),
                      child: CountryCodePicker(
                        showDropDownButton: true,
                        padding: EdgeInsets.zero,
                        textStyle: TextStyle(fontSize: 12.sp),
                        flagWidth: 20.w,
                        initialSelection: 'SA',
                        showCountryOnly: false,
                        showOnlyCountryWhenClosed: false,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 100.h,
                ),
                AppButton(onPressed: () {}, text: "حفظ"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
