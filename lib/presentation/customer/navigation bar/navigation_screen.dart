import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salegates/core/theme/colors.dart';
import 'package:salegates/presentation/add%20Ads/category_list_screen.dart';
import 'package:salegates/presentation/chat/chat_list_screen.dart';
import 'package:salegates/presentation/customer/bills/bills_screen.dart';
import 'package:salegates/presentation/customer/home/home_screen.dart';
import 'package:salegates/presentation/customer/profile/profile_screen.dart';

class CustomerNavigationScreen extends StatefulWidget {
  const CustomerNavigationScreen({super.key});

  @override
  State<CustomerNavigationScreen> createState() =>
      _CustomerNavigationScreenState();
}

class _CustomerNavigationScreenState extends State<CustomerNavigationScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    CustomerHomeScreen(),
    ChatListScreen(),
    BillsScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return CategoryListScreen();
          }));
        },
        backgroundColor: AppColors.primary,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: _currentIndex == 0
                  ? SvgPicture.asset(
                      "assets/svgs/home_s.svg",
                      height: 35.h,
                    )
                  : SvgPicture.asset("assets/svgs/home.svg"),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: _currentIndex == 1
                  ? SvgPicture.asset("assets/svgs/chat_s.svg")
                  : SvgPicture.asset("assets/svgs/chat.svg"),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: _currentIndex == 2
                  ? SvgPicture.asset("assets/svgs/tag_s.svg")
                  : SvgPicture.asset("assets/svgs/tag.svg"),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: _currentIndex == 3
                  ? SvgPicture.asset("assets/svgs/profile_s.svg")
                  : SvgPicture.asset("assets/svgs/profile.svg"),
              label: 'home',
            ),
          ]),
    );
  }
}
