import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salegates/core/widgets/appbar_with_title_widget.dart';
import 'package:salegates/presentation/cards/category_card_widget.dart';
import 'package:salegates/presentation/customer/categories/animals/animal_subcategories_without_ads.dart';
import 'package:salegates/presentation/customer/categories/cars/car_subcategories_without_ads.dart';
import 'package:salegates/presentation/customer/categories/clothes/clothes_subcategories_without_ads.dart';
import 'package:salegates/presentation/customer/categories/electronics/electronics_subcategories_without_ads.dart';
import 'package:salegates/presentation/customer/categories/furniture/furniture_subcategpries_without_ads.dart';
import 'package:salegates/presentation/customer/categories/jobs/jobs_subcategories_without_ads.dart';
import 'package:salegates/presentation/customer/categories/real_estate/real_Estate_subcategory_without_ads.dart';

class CategoryListScreen extends StatelessWidget {
  CategoryListScreen({super.key});
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
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppbarWithTitleWidget(title: "الإعلانات"),
          GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 5.h,
                crossAxisSpacing: 5.h,
              ),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: categoryItems.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    switch (categoryItems[index]["category_id"]) {
                      case "1":
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    RealEstateSubcategoriesWithoutAds()));
                        break;
                      case "2":
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    CarSubcategoriesWithoutAds()));
                        break;
                      case "3":
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ElectonicSubcategoriesWithoutAds()));
                        break;
                      case "4":
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ClothesSubcategoriesWithoutAds()));
                        break;
                      case "5":
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    FurnitureSubcategoriesWithoutAds()));
                        break;
                      case "6":
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    JobsSubcategoriesWithoutAds()));
                        break;
                      case "7":
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    AnimalsSubcategoriesWithoutAds()));
                        break;
                    }
                  },
                  child: CategoryCardWidget(
                    image: categoryItems[index]["image"]!,
                    title: categoryItems[index]["title"]!,
                    key: ValueKey(categoryItems[index]["id"]),
                  ),
                );
              })
        ],
      ),
    );
  }
}
