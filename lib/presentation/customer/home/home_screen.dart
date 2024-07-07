import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/theme/theme.dart';
import 'package:salegates/presentation/cards/category_card_widget.dart';
import 'package:salegates/presentation/cards/horizintal_real_estate_card.dart';
import 'package:salegates/presentation/customer/home/widgets/search_bar_widget.dart';
import 'package:salegates/presentation/customer/home/widgets/story_widget.dart';
import 'package:salegates/presentation/cards/vertical_real_estate_card.dart';
import 'package:text_scroll/text_scroll.dart';

class CustomerHomeScreen extends StatefulWidget {
  CustomerHomeScreen({super.key});
  final itemcount1 = 9;
  final itemcount2 = 12;

  @override
  State<CustomerHomeScreen> createState() => _CustomerHomeScreenState();
}

class _CustomerHomeScreenState extends State<CustomerHomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  bool expand = false;
  final List<Map<String, String>> categoryItems = [
    {
      "image": "assets/images/house.png",
      "id": "1",
      "category_id": "1",
      "title": "قسم العقارات"
    },
    {
      "image": "assets/images/car.png",
      "id": "2",
      "category_id": "2",
      "title": "قسم السيارات"
    },
    {
      "image": "assets/images/lab.png",
      "id": "3",
      "category_id": "3",
      "title": "قسم الإلكترونيات"
    },
    {
      "image": "assets/images/house.png",
      "id": "4",
      "category_id": "1",
      "title": "قسم العقارات"
    },
    {
      "image": "assets/images/car.png",
      "id": "5",
      "category_id": "2",
      "title": "قسم السيارات"
    },
    {
      "image": "assets/images/lab.png",
      "id": "6",
      "category_id": "3",
      "title": "قسم الإلكترونيات"
    },
    {
      "image": "assets/images/house.png",
      "id": "7",
      "category_id": "1",
      "title": "قسم العقارات"
    },
    {
      "image": "assets/images/car.png",
      "id": "8",
      "category_id": "2",
      "title": "قسم السيارات"
    },
    {
      "image": "assets/images/lab.png",
      "id": "9",
      "category_id": "3",
      "title": "قسم الإلكترونيات"
    },
    {
      "image": "assets/images/house.png",
      "id": "10",
      "category_id": "1",
      "title": "قسم العقارات"
    },
    {
      "image": "assets/images/car.png",
      "id": "11",
      "category_id": "2",
      "title": "قسم السيارات"
    },
    {
      "image": "assets/images/lab.png",
      "id": "12",
      "category_id": "3",
      "title": "قسم الإلكترونيات"
    }
  ];
  bool sponsorAds = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 250.h,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/images/homebackground.png",
                        ))),
              ),
              Positioned(
                top: 60.h,
                right: 20.w,
                left: 20.w,
                child: SearchWithNotificationWidget(),
              ),
              Positioned(
                  top: 140.h,
                  right: 20.w,
                  left: 20.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "قصص قصيرة",
                        style: AppTheme.textBodyWhite15Weight700(),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "الكل",
                          style: AppTheme.textBodyWhite15Weight700().copyWith(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  )),
              Positioned(
                  bottom: -60.h,
                  right: 20.w,
                  left: 20.w,
                  child: SizedBox(
                    height: 120.h,
                    child: ListView.builder(
                      //  physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.all(2.0.w),
                        child: StoryWidget(),
                      ),
                    ),
                  ))
            ],
          ),
          SizedBox(
            height: 50.h,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20.h),
              child: SingleChildScrollView(
                child: Column(children: [
                  Container(
                    height: 40.h,
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40.h),
                        topLeft: Radius.circular(40.h),
                      ),
                    ),
                    child: Center(
                      child: TextScroll(
                        'هناك حقيقة مثبتة منذ زمن طويل وهي أن هناك حقيقة مثبتة منذ زمن طويل وهي أن هناك حقيقة مثبتة منذ زمن طويل وهي أن .........',
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                        style: AppTheme.textBodyWhite15Weight700(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 150.h,
                    width: double.infinity,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(8.r)),
                    child: AnotherCarousel(
                      dotSize: 5.h,
                      dotIncreaseSize: 2.h,
                      dotBgColor: Colors.transparent,
                      autoplayDuration: Duration(seconds: 4),
                      dotIncreasedColor: AppColors.primary,
                      images: [
                        Image.asset(
                          "assets/images/banner.png",
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          "assets/images/banner.png",
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          "assets/images/banner.png",
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          "assets/images/banner.png",
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 5.h,
                        crossAxisSpacing: 5.h,
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: expand ? widget.itemcount2 : widget.itemcount1,
                      itemBuilder: (context, index) {
                        return CategoryCardWidget(
                          image: categoryItems[index]["image"]!,
                          title: categoryItems[index]["title"]!,
                          key: ValueKey(categoryItems[index]["id"]),
                        );
                      }),
                  SizedBox(
                    height: 20.h,
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        expand = !expand;
                      });
                    },
                    height: 60.h,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    minWidth: double.infinity,
                    color: AppColors.primary,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          expand ? "عرض أقل" : "عرض الكل",
                          style: AppTheme.textButton18WiteWeight600(),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        SvgPicture.asset(expand
                            ? "assets/svgs/arrow_up.svg"
                            : "assets/svgs/arrow_down.svg")
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "اخر المشاهدات",
                        style: AppTheme.text18BlackWeight700(),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "عرض الكل",
                          style: AppTheme.textBodyprimaryWeight700(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            sponsorAds = true;
                          });
                        },
                        child: Text(
                          "إعلانات مبوبة",
                          style: sponsorAds
                              ? AppTheme.textorange14Weight500()
                              : AppTheme.textBody16black39weight400(),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            sponsorAds = false;
                          });
                        },
                        child: Text(
                          "إعلانات تجارية",
                          style: !sponsorAds
                              ? AppTheme.textorange14Weight500()
                              : AppTheme.textBody16black39weight400(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  sponsorAds
                      ? SizedBox(
                          height: 200.h,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return HorizontalRealEstateCard();
                              }),
                        )
                      : SizedBox(
                          height: 200.h,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return Card(
                                  child: Padding(
                                    padding: EdgeInsets.all(8.h),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6.r),
                                      child: Image.asset(
                                        "assets/images/comm_ad1.png",
                                        width: 180.w,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                );
                              })),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "قسم العقارات",
                        style: AppTheme.text18BlackWeight700(),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "عرض الكل",
                          style: AppTheme.textBodyprimaryWeight700(),
                        ),
                      ),
                    ],
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: 120.h,
                          child: VerticalRealEstateCard(
                            edit: false,
                          ),
                        );
                      })
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
