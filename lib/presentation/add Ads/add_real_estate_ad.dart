import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/theme/theme.dart';
import 'package:salegates/core/widgets/appbar_with_title_widget.dart';
import 'package:salegates/core/widgets/common_widgets.dart';
import 'package:salegates/presentation/add%20Ads/widgets/add_ad_textEditField_with_label.dart';
import 'package:salegates/presentation/add%20Ads/widgets/add_ad_upload_photos_widget.dart';
import 'package:salegates/presentation/add%20Ads/widgets/add_ads_close_container.dart';
import 'package:salegates/presentation/auth/widgets/auth_text_edit.dart';
import 'package:salegates/presentation/customer/profile/my%20ads/my_ads_screen.dart';
import 'package:toggle_switch/toggle_switch.dart';

class AddRealEstateAd extends StatelessWidget {
  AddRealEstateAd({super.key});

  final typeItems = [
    {
      "title": "غرفة",
      "value": false,
    },
    {
      "title": "مكتب",
      "value": false,
    },
    {
      "title": "فيلا",
      "value": false,
    },
    {
      "title": "شقه",
      "value": false,
    }
  ];

  final Addons = [
    {
      "title": "اسانسير",
      "value": false,
    },
    {
      "title": "حديقة خاصه",
      "value": false,
    },
    {
      "title": "ادوات مطبخ",
      "value": false,
    },
    {
      "title": "شرفه",
      "value": false,
    }
  ];

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
                    // Text(
                    //   "طريقة العرض",
                    //   style: AppTheme.textHeading15BlackWeight600(),
                    // ),
                    // SizedBox(
                    //   height: 10.h,
                    // ),
                    // Center(
                    //   child: ToggleSwitch(
                    //     minWidth: 170.0,
                    //     initialLabelIndex: 1,
                    //     cornerRadius: 5.0.h,
                    //     activeFgColor: Colors.white,
                    //     inactiveBgColor: Colors.white,
                    //     inactiveFgColor: Colors.black,
                    //     radiusStyle: true,
                    //     totalSwitches: 2,
                    //     labels: ['ايجار', 'بيع'],
                    //     activeBgColors: [
                    //       [AppColors.primary],
                    //       [AppColors.primary]
                    //     ],
                    //     onToggle: (index) {
                    //       print('switched to: $index');
                    //     },
                    //   ),
                    // ),
                    SizedBox(
                      height: 20.h,
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
                      "النوع",
                      style: AppTheme.textHeading15BlackWeight600(),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    AddAdWrapList(
                      items: typeItems,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFieldWithLabel(title: "المساحه (م2)"),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "الكماليات",
                      style: AppTheme.textHeading15BlackWeight600(),
                    ),
                    AddAdWrapList(items: Addons),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFieldWithLabel(title: "عدد الغرف"),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFieldWithLabel(title: "الحمامات"),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFieldWithLabel(title: "الطابق"),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "مفروش",
                      style: AppTheme.textHeading15BlackWeight600(),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    ToggleSwitch(
                      minWidth: 80.0,
                      initialLabelIndex: 1,
                      cornerRadius: 5.0.h,
                      activeFgColor: Colors.white,
                      inactiveBgColor: Colors.white,
                      inactiveFgColor: Colors.black,
                      radiusStyle: true,
                      totalSwitches: 2,
                      labels: ['نعم', 'لا'],
                      activeBgColors: [
                        [AppColors.primary],
                        [AppColors.primary]
                      ],
                      onToggle: (index) {
                        print('switched to: $index');
                      },
                    ),
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
                    TextFieldWithLabel(
                      title: "اوصف المنتج المباع",
                    )
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

class AddAdWrapList extends StatefulWidget {
  const AddAdWrapList({super.key, required this.items});
  final List<Map<String, Object>> items;

  @override
  State<AddAdWrapList> createState() => _AddAdWrapListState();
}

class _AddAdWrapListState extends State<AddAdWrapList> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      children: widget.items
          .map((e) => Padding(
                padding: EdgeInsets.all(5.0.h),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      e["value"] = !(e["value"] as bool);
                    });
                  },
                  child: Container(
                      padding: EdgeInsets.all(10.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: e["value"] as bool
                            ? AppColors.primary
                            : Colors.white,
                        border: Border.all(
                          color: AppColors.borderColor,
                        ),
                      ),
                      child: Text(
                        e["title"].toString(),
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: e["value"] as bool
                                ? Colors.white
                                : Colors.black),
                      )),
                ),
              ))
          .toList(),
    );
  }
}

class AddAdCheckBox extends StatefulWidget {
  const AddAdCheckBox({super.key});

  @override
  State<AddAdCheckBox> createState() => _AddAdCheckBoxState();
}

class _AddAdCheckBoxState extends State<AddAdCheckBox> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: SizedBox(
        width: 140.w,
        child: ListTileTheme(
          child: CheckboxListTile(
              value: isSelected,
              contentPadding: EdgeInsets.zero,
              title: Text(
                "قابل للنقاش",
                textAlign: TextAlign.right,
              ),
              onChanged: (value) {
                setState(() {
                  isSelected = value!;
                });
              }),
        ),
      ),
    );
  }
}
