import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/theme/theme.dart';
import 'package:salegates/core/widgets/appbar_with_title_widget.dart';
import 'package:salegates/core/widgets/common_widgets.dart';
import 'package:salegates/presentation/add%20Ads/add_real_estate_ad.dart';
import 'package:salegates/presentation/add%20Ads/widgets/add_ad_textEditField_with_label.dart';
import 'package:salegates/presentation/add%20Ads/widgets/add_ad_upload_photos_widget.dart';
import 'package:salegates/presentation/add%20Ads/widgets/add_ads_close_container.dart';
import 'package:salegates/presentation/customer/profile/my%20ads/my_ads_screen.dart';

class AddGeneralAdScreen extends StatelessWidget {
  const AddGeneralAdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppbarWithTitleWidget(title: "انشاء اعلان"),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(20.h),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AddAdCloseContainer(),
                    SizedBox(
                      height: 20.h,
                    ),
                    AddAdUploadPhotosWidget(),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextFieldWithLabel(title: "اسم الاعلان"),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 40.h,
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                      decoration: BoxDecoration(
                          color: AppColors.primaryLight,
                          borderRadius: BorderRadius.circular(5.r)),
                      child: Text(
                        "المعلومات",
                        style: AppTheme.textBodyprimaryWeight700(),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFieldWithLabel(title: "السعر"),
                    SizedBox(
                      height: 10.h,
                    ),
                    AddAdCheckBox(),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "الموقع",
                      style: AppTheme.textHeading15BlackWeight600(),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    DropdownButtonFormField(
                        items: [
                          DropdownMenuItem(
                            child: Text("القاهرة"),
                            value: "cairo",
                          )
                        ],
                        decoration: InputDecoration(
                          border: AppTheme.dropDownBorder(),
                          enabledBorder: AppTheme.dropDownBorder(),
                          focusedBorder: AppTheme.dropDownBorder(),
                        ),
                        value: "cairo",
                        onChanged: (value) {}),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "وصف المنتج المباع",
                      style: AppTheme.textHeading15BlackWeight600(),
                    ),
                    TextFormField(
                      maxLength: 500,
                      maxLines: 5,
                      decoration: InputDecoration(
                        border: AppTheme.dropDownBorder(),
                        enabledBorder: AppTheme.dropDownBorder(),
                        focusedBorder: AppTheme.dropDownBorder(),
                      ),
                    ),
                  ]),
            ),
          )),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(10.0.h),
        child: AppButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        content: SizedBox(
                          height: 400.h,
                          width: 300.w,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(
                                    Icons.close,
                                    size: 30.h,
                                  ),
                                ),
                              ),
                              Image.asset(
                                "assets/images/check.png",
                                height: 150.h,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                "تم انشاء الاعلان بنجاح",
                                style: AppTheme.text18BlackWeight700(),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "سوف يتم تحويلك الي صفحة الاعلانات الخاص بك لادارتها ",
                                textAlign: TextAlign.center,
                                style: AppTheme.textBody16black39weight400()
                                    .copyWith(fontSize: 14.sp),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              SizedBox(
                                width: 200.w,
                                child: AppButton(
                                  onPressed: () {
                                    Navigator.pop(context);

                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const MyAdsScreen(),
                                      ),
                                    );
                                  },
                                  text: "حسنا",
                                ),
                              )
                            ],
                          ),
                        ),
                      ));
            },
            text: "إنشاء اعلان"),
      ),
    );
  }
}
