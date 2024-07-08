import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salegates/presentation/customer/profile/contact%20us/contact_screen.dart';
import 'package:salegates/presentation/customer/profile/edit%20profile/edit_profile_screen.dart';
import 'package:salegates/presentation/customer/profile/favourites/my_favourites_screen.dart';
import 'package:salegates/presentation/customer/profile/my%20ads/my_ads_screen.dart';
import 'package:salegates/presentation/customer/profile/widgets/profile_header_widget.dart';
import 'package:salegates/presentation/customer/profile/widgets/profile_list_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeaderProfileWidget(),
          SizedBox(
            height: 50.h,
          ),
          Expanded(
            child: ListView(
              children: [
                ProfileListItem(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditProfileScreen(),
                        )),
                    text: "تعديل حسابي",
                    icon: "assets/svgs/profile.svg"),
                SizedBox(
                  height: 30.h,
                ),
                ProfileListItem(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyAdsScreen(),
                        )),
                    text: "اعلاناتي",
                    icon: "assets/svgs/flag.svg"),
                SizedBox(
                  height: 30.h,
                ),
                ProfileListItem(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyFavouritsesScreen(),
                        )),
                    text: "المفضلة",
                    icon: "assets/svgs/fav_black.svg"),
                SizedBox(
                  height: 30.h,
                ),
                const ProfileListItem(
                    text: "عن التطبيق", icon: "assets/svgs/about.svg"),
                SizedBox(
                  height: 30.h,
                ),
                ProfileListItem(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ContactUsScreen(),
                        )),
                    text: "تواصل معنا",
                    icon: "assets/svgs/phone.svg"),
                SizedBox(
                  height: 30.h,
                ),
                const ProfileListItem(
                    text: "حذف الحساب", icon: "assets/svgs/delete_account.svg"),
                SizedBox(
                  height: 30.h,
                ),
                const ProfileListItem(
                    text: "تسجيل الخروج", icon: "assets/svgs/logout.svg"),
                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
