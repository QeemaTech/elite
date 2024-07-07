import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salegates/core/theme/theme.dart';
import 'package:salegates/core/widgets/appbar_with_search_widget.dart';

class ChatListScreen extends StatefulWidget {
  const ChatListScreen({super.key});

  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const AppbarWithSearchWidget(),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20.h),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Directionality(
                    textDirection: TextDirection.ltr,
                    child: Slidable(
                      key: ValueKey(index),
                      child: Card(
                        surfaceTintColor: Colors.white,
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 26.h,
                            backgroundImage:
                                AssetImage("assets/images/profile_avatar.png"),
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Alex Lnderson",
                                  style: AppTheme.text13Weigh600Black()
                                      .copyWith(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w500)),
                              Text(
                                "2 min ago",
                                style: AppTheme.text12grayWeight400(),
                              )
                            ],
                          ),
                          subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "How are you?",
                                overflow: TextOverflow.ellipsis,
                                style: AppTheme.text12grayWeight400(),
                              ),
                              Container(
                                height: 25.h,
                                width: 25.h,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                    child: Text(
                                  "3",
                                  style: AppTheme.textBodyWhite15Weight700()
                                      .copyWith(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13.sp),
                                )),
                              )
                            ],
                          ),
                        ),
                      ),
                      endActionPane:
                          ActionPane(motion: const DrawerMotion(), children: [
                        SlidableAction(
                          // An action can be bigger than the others.

                          onPressed: (context) {},
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          icon: Icons.notifications_active_outlined,
                        ),
                        SlidableAction(
                          onPressed: (context) {},
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          icon: Icons.delete_outline,
                        ),
                      ]),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
