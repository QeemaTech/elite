import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salegates/presentation/cards/vertical_real_estate_card.dart';
import 'package:salegates/presentation/customer/categories/real_estate/real_estate_ad_screen.dart';
import 'package:salegates/presentation/customer/profile/my%20ads/widgets/my_ads_header_widget.dart';

class MyAdsScreen extends StatelessWidget {
  const MyAdsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: MediaQuery.sizeOf(context).width > 700
            ? EdgeInsets.symmetric(horizontal: 200.0.w)
            : EdgeInsets.zero,
        child: Column(
          children: [
            const MyAdsHeaderWidget(),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RealEstateAdScreen(
                                        isEdit: true,
                                      )));
                        },
                        child: VerticalRealEstateCard(
                          image: "assets/images/home.png",
                          edit: true,
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
