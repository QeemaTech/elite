import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/core/theme/theme.dart';
import 'package:salegates/core/widgets/slider_widget.dart';
import 'package:salegates/presentation/auth/register_screen.dart';
import 'package:salegates/presentation/cards/category_card_widget.dart';
import 'package:salegates/presentation/cards/horizintal_real_estate_card.dart';
import 'package:salegates/presentation/customer/categories/animals/animal_subcategories_without_ads.dart';
import 'package:salegates/presentation/customer/categories/cars/car_subcategories_without_ads.dart';
import 'package:salegates/presentation/customer/categories/clothes/clothes_subcategories_without_ads.dart';
import 'package:salegates/presentation/customer/categories/electronics/electronics_subcategories_without_ads.dart';
import 'package:salegates/presentation/customer/categories/furniture/furniture_subcategpries_without_ads.dart';
import 'package:salegates/presentation/customer/categories/jobs/jobs_subcategories_without_ads.dart';
import 'package:salegates/presentation/customer/categories/real_estate/real_estate_ad_screen.dart';
import 'package:salegates/presentation/customer/categories/real_estate/real_estate_screen.dart';
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
      "image": "assets/images/clothes.png",
      "id": "4",
      "category_id": "4",
      "title": "قسم الازياء"
    },
    {
      "image": "assets/images/chair.png",
      "id": "5",
      "category_id": "5",
      "title": "قسم الاثاث"
    },
    {
      "image": "assets/images/jobs.png",
      "id": "6",
      "category_id": "6",
      "title": "قسم الوظائف"
    },
    {
      "image": "assets/images/bird.png",
      "id": "7",
      "category_id": "7",
      "title": "قسم الحيوانات والطيور"
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
      body: SingleChildScrollView(
        child: Column(
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
                  child: SearchWithNotificationWidget(
                    showBack: false,
                  ),
                ),
                Positioned(
                    top: 140.h,
                    right: 10.w,
                    left: 10.w,
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
                    right: 10.w,
                    left: 10.w,
                    child: SizedBox(
                      height: 120.h,
                      child: ListView.builder(
                        //  physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
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
            Container(
              padding: EdgeInsets.all(10.h),
              child: Column(children: [
                Container(
                  height: 40.h,
                  //   padding: EdgeInsets.symmetric(horizontal: 5.w),
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
                SliderWidget(),
                // SizedBox(
                //   height: 20.h,
                // ),
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
                      return GestureDetector(
                        onTap: () {
                          switch (categoryItems[index]["category_id"]) {
                            case "1":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          RealEstateScreen()));
                              break;
                            case "2":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CarSubcategoriesWithoutAds(
                                            addScreen: false,
                                          )));
                              break;
                            case "3":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ElectonicSubcategoriesWithoutAds(
                                            addScreen: false,
                                          )));
                              break;
                            case "4":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ClothesSubcategoriesWithoutAds(
                                            addScreen: false,
                                          )));
                              break;
                            case "5":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          FurnitureSubcategoriesWithoutAds(
                                            addScreen: false,
                                          )));
                              break;
                            case "6":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          JobsSubcategoriesWithoutAds(
                                            addScreen: false,
                                          )));
                              break;
                            case "7":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          AnimalsSubcategoriesWithoutAds(
                                            addScreen: false,
                                          )));
                              break;
                          }
                        },
                        child: CategoryCardWidget(
                          image: categoryItems[index]["image"]!,
                          title: categoryItems[index]["title"]!,
                          key: ValueKey(categoryItems[index]["id"]),
                        ),
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
                              return InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                RealEstateAdScreen()));
                                  },
                                  child: const HorizontalRealEstateCard());
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
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: "boutique",
        shape: CircleBorder(),
        // isExtended: true,

        onPressed: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const RegisterScreen(
                  selectedOption: 2,
                ),
              ),
              (route) => false);
        },
        backgroundColor: AppColors.primary,
        child: SvgPicture.asset("assets/svgs/boutique_logo.svg"),
      ),
    );
  }
}
