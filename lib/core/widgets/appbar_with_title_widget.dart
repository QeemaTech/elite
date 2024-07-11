import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salegates/core/widgets/appbar_row_widge_with_Title.dart';

class AppbarWithTitleWidget extends StatelessWidget {
  const AppbarWithTitleWidget(
      {super.key,
      this.title,
      this.removeSearchIcon = false,
      this.isBack = true,
      this.isVendor = false});
  final title;
  final bool? removeSearchIcon;
  final bool? isBack;
  final bool? isVendor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.h,
      width: double.infinity,
      padding: EdgeInsets.all(20.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20.r)),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/homebackground.png"))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20.h,
          ),
          AppBarRowWithTitle(
            title: title,
            removeSearchIcon: removeSearchIcon,
            isVendor: isVendor,
            isBack: isBack,
          ),
        ],
      ),
    );
  }
}
