import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salegates/presentation/customer/home/widgets/search_bar_widget.dart';

class AppbarWithSearchWidget extends StatelessWidget {
  const AppbarWithSearchWidget({super.key, this.showBack = false});
  final bool showBack;

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
          SearchWithNotificationWidget(
            showBack: showBack,
          ),
        ],
      ),
    );
  }
}
