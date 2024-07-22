import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salegates/core/widgets/appbar_with_title_widget.dart';
import 'package:salegates/presentation/cards/vertical_ad_with_rate_card.dart';
import 'package:salegates/presentation/cards/vertical_real_estate_card.dart';

class MyFavouritsesScreen extends StatelessWidget {
  MyFavouritsesScreen({super.key});

  final List<Map<String, String>> items = [
    {
      "image": "assets/images/tiger.png",
      "category": "1",
    },
    {
      "image": "assets/images/home.png",
      "category": "2",
    },
    {
      "image": "assets/images/comm_ad1.png",
      "category": "2",
    },
    {
      "image": "assets/images/village.png",
      "category": "2",
    },
    {
      "image": "assets/images/real_estate.png",
      "category": "2",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: MediaQuery.sizeOf(context).width > 700
            ? EdgeInsets.symmetric(horizontal: 200.0.w)
            : EdgeInsets.zero,
        child: Column(children: [
          AppbarWithTitleWidget(
            title: "المفضلة",
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    if (items[index]["category"] == "1") {
                      return VerticalAdWithRateCard(
                        image: items[index]["image"],
                      );
                    } else {
                      return VerticalRealEstateCard(
                        edit: false,
                        image: items[index]["image"],
                      );
                    }
                  }))
        ]),
      ),
    );
  }
}
