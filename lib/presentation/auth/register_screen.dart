import 'dart:developer';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/theme/theme.dart';
import 'package:salegates/core/widgets/common_widgets.dart';
import 'package:salegates/presentation/auth/otp_screen.dart';
import 'package:salegates/presentation/auth/widgets/auth_text_edit.dart';
import 'package:salegates/presentation/auth/widgets/social_icon.dart';
import 'package:salegates/presentation/auth/widgets/user_profile_image.dart';
import 'package:salegates/presentation/auth/widgets/user_type.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  int selectedOption = 1;
  bool approveTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.h,
              ),
              Center(
                  child: Text(
                'إنشاء حساب',
                style: AppTheme.text18BlackWeight700(),
              )),
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    log("edit profile image");
                  },
                  child: UserProfileImage(),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'التسجيل بصفتي',
                style:
                    AppTheme.text18BlackWeight700().copyWith(fontSize: 15.sp),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: ListTile(
                      dense: false,
                      contentPadding: EdgeInsets.zero,
                      visualDensity: VisualDensity.compact,
                      title: UserTypeWidget(
                        image: "assets/svgs/usertype.svg",
                        name: "مستخدم",
                        selected: selectedOption == 1,
                      ),
                      leading: Radio<int>(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        visualDensity: VisualDensity.compact,
                        activeColor: AppColors.primary,
                        value: 1,
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value ?? 0;
                            log(selectedOption.toString());
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      dense: false,
                      contentPadding: EdgeInsets.zero,
                      visualDensity: VisualDensity.compact,
                      title: UserTypeWidget(
                        image: "assets/svgs/companytype.svg",
                        name: "شركة",
                        selected: selectedOption == 2,
                      ),
                      leading: Radio<int>(
                        visualDensity: VisualDensity.compact,
                        activeColor: AppColors.primary,
                        value: 2,
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value ?? 0;
                            log(selectedOption.toString());
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'رقم الهاتف',
                style:
                    AppTheme.text18BlackWeight700().copyWith(fontSize: 15.sp),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: AuthTextEditing(
                      hintText: "01000000000",
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: AppColors.borderColor,
                        width: 1,
                      ),
                    ),
                    child: const CountryCodePicker(
                      showDropDownButton: true,
                      padding: EdgeInsets.zero,
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
              Visibility(
                  visible: selectedOption == 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'اسم الشركة',
                        style: AppTheme.text18BlackWeight700()
                            .copyWith(fontSize: 15.sp),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      AuthTextEditing(
                        hintText: "ادخل اسم الشركة",
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(
                        height: 10.h,
                      )
                    ],
                  )),
              Visibility(
                  visible: selectedOption == 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'وصف الشركة',
                        style: AppTheme.text18BlackWeight700()
                            .copyWith(fontSize: 15.sp),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      AuthTextEditing(
                        hintText: "ادخل وصف الشركة",
                        keyboardType: TextInputType.text,
                        readOnly: true,
                        maxLength: 250,
                        maxLines: 5,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  )),
              Visibility(
                  visible: selectedOption == 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'الموقع الالكتروني للشركة',
                        style: AppTheme.text18BlackWeight700()
                            .copyWith(fontSize: 15.sp),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      AuthTextEditing(
                        hintText: "ادخل الموقع الالكتروني للشركة",
                        keyboardType: TextInputType.text,
                        readOnly: true,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  )),
              Visibility(
                  visible: selectedOption == 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ملف الشركة',
                        style: AppTheme.text18BlackWeight700()
                            .copyWith(fontSize: 15.sp),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      AuthTextEditing(
                        hintText: "ارفع ملف الشركة",
                        keyboardType: TextInputType.text,
                        readOnly: true,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            log("clicked");
                          },
                          child: Container(
                            padding: EdgeInsets.all(8.h),
                            child: SizedBox(
                              child: SvgPicture.asset(
                                "assets/svgs/upload.svg",
                                // color: AppColors.primary,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  )),
              Visibility(
                  visible: selectedOption == 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'عنوان الشركة',
                        style: AppTheme.text18BlackWeight700()
                            .copyWith(fontSize: 15.sp),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      AuthTextEditing(
                        hintText: "ادخل عنوان الشركة",
                        keyboardType: TextInputType.text,
                        readOnly: true,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            log("clicked");
                          },
                          child: Container(
                            padding: EdgeInsets.all(8.h),
                            child: SizedBox(
                              child: SvgPicture.asset(
                                "assets/svgs/location.svg",
                                // color: AppColors.primary,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  )),
              Visibility(
                  visible: selectedOption == 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'رابط الفيس بوك',
                        style: AppTheme.text18BlackWeight700()
                            .copyWith(fontSize: 15.sp),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      AuthTextEditing(
                        hintText: "ادخل رابط الفيس بوك",
                        keyboardType: TextInputType.text,
                        readOnly: true,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  )),
              Visibility(
                  visible: selectedOption == 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'رابط تويتر / اكس',
                        style: AppTheme.text18BlackWeight700()
                            .copyWith(fontSize: 15.sp),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      AuthTextEditing(
                        hintText: "ادخل رابط تويتر / اكس",
                        keyboardType: TextInputType.text,
                        readOnly: true,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  )),
              Visibility(
                  visible: selectedOption == 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'رابط انستجرام',
                        style: AppTheme.text18BlackWeight700()
                            .copyWith(fontSize: 15.sp),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      AuthTextEditing(
                        hintText: "ادخل رابط انستجرام ",
                        keyboardType: TextInputType.text,
                        readOnly: true,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  )),
              Visibility(
                  visible: selectedOption == 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'رابط سناب شات',
                        style: AppTheme.text18BlackWeight700()
                            .copyWith(fontSize: 15.sp),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      AuthTextEditing(
                        hintText: "ادخل رابط سناب شات ",
                        keyboardType: TextInputType.text,
                        readOnly: true,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  )),
              Row(
                children: [
                  Radio<bool>(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity: VisualDensity.compact,
                    toggleable: true,
                    value: true,
                    groupValue: approveTerms,
                    activeColor: AppColors.primary,
                    onChanged: (value) {
                      setState(() {
                        approveTerms = value ?? false;
                        log(approveTerms.toString());
                      });
                    },
                  ),
                  Text.rich(
                    TextSpan(children: [
                      TextSpan(
                        text: 'انا اوافق على ',
                        style: AppTheme.text18BlackWeight700().copyWith(
                            fontSize: 13.sp, fontWeight: FontWeight.w400),
                      ),
                      TextSpan(
                        text: 'الشروط والاحكام',
                        style: AppTheme.text18BlackWeight700().copyWith(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.primary),
                      ),
                      TextSpan(
                        text: ' و ',
                        style: AppTheme.text18BlackWeight700().copyWith(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: 'سياسة الخصوصية',
                        style: AppTheme.text18BlackWeight700().copyWith(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.primary),
                      ),
                    ]),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              AppButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OTPScreen(
                                selectedOption: selectedOption,
                              )));
                },
                text: "تسجيل الدخول",
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      color: AppColors.borderColor,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Text(
                      "او",
                      style: AppTheme.text18BlackWeight700()
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 1,
                      color: AppColors.borderColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: Text(
                  "التسجيل من خلال السوشيال ميديا",
                  style: AppTheme.text18BlackWeight700().copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SocialIcon(
                      backgroundColor: Colors.white,
                      icon: "assets/svgs/google.svg"),
                  SocialIcon(
                      backgroundColor: Colors.black,
                      icon: "assets/svgs/twitter-x.svg"),
                  SocialIcon(
                      backgroundColor: Color(0xff616161),
                      icon: "assets/svgs/apple.svg"),
                  SocialIcon(
                      backgroundColor: Color(0xff4285F4),
                      icon: "assets/svgs/facebook.svg"),
                ],
              ),
              SizedBox(
                height: 50.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
