import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salegates/core/theme/theme.dart';
import 'package:salegates/core/widgets/common_widgets.dart';
import 'package:salegates/presentation/auth/widgets/pin_code.dart';
import 'package:salegates/presentation/customer/navigation%20bar/navigation_screen.dart';
import 'package:salegates/presentation/vendor/choose_section_screen.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key, required this.selectedOption});
  final int selectedOption;

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50.h,
              ),
              AppBarOTPWidget(
                context: context,
                title: "رمز الأمان",
                showNotifications: false,
              ),
              SizedBox(
                height: 30.h,
              ),
              Image.asset("assets/images/otp.png"),
              SizedBox(
                height: 30.h,
              ),
              Text.rich(TextSpan(children: [
                TextSpan(
                  text: 'لقد تم ارسال رمز امان الي ',
                  style: AppTheme.textBody16black39weight400(),
                ),
                TextSpan(
                  text: "1234567890",
                  style: AppTheme.textBodyprimaryWeight700(),
                ),
                TextSpan(
                  text: ' وتستطيع طلب رمز امان جديد بعد ',
                  style: AppTheme.textBody16black39weight400(),
                ),
                TextSpan(
                  text: '00:45',
                  style: AppTheme.textBodyprimaryWeight700(),
                ),
              ])),
              SizedBox(
                height: 30.h,
              ),
              const PinCodeWidget(),
              SizedBox(
                height: 30.h,
              ),
              Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: 'لم يصل اليك رساله ؟ ',
                          style: AppTheme.textBody16black39weight400()),
                      TextSpan(
                          text: 'اعد الأرسال الأن',
                          style: AppTheme.textBodyprimaryWeight700())
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              AppButton(
                  onPressed: () {
                    widget.selectedOption == 1
                        ? Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const CustomerNavigationScreen()),
                            (route) => false)
                        : Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChooseSectionScreen()),
                            (route) => false);
                  },
                  text: "التالي")
            ],
          ),
        ),
      ),
    );
  }
}
