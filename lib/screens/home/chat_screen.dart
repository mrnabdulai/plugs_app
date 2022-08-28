import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plugs_app/utils/ui.dart';

import '../../constants/colors.dart';
import '../../widgets/chats/chat_card.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              addVerticalSpace(20.h),
              Text("Chats",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 32.sp)),
              addVerticalSpace(20.h),
              Text("New Messages",
                  style: TextStyle(
                      color: primaryLightText,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp)),
              addVerticalSpace(10.h),
              ChatCard(),
              ChatCard(),
              addVerticalSpace(20.h),

              Text("Last Messages",
                  style: TextStyle(
                      color: primaryLightText,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp)),
              addVerticalSpace(10.h),
              ChatCard(isOnline: false),
              ChatCard(isOnline: false),
              ChatCard(isOnline: false),

              ChatCard(isOnline: false),




            ],
          ),
        ),
      ),
    );
  }
}
