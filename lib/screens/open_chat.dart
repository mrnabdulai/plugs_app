import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plugs_app/constants/colors.dart';
import 'package:plugs_app/utils/math_util.dart';
import 'package:plugs_app/utils/ui.dart';
import 'package:plugs_app/widgets/chats/from_chat.dart';
import 'package:plugs_app/widgets/chats/me_chat.dart';
import 'package:plugs_app/widgets/pg_action_container.dart';
import 'dart:math';

class OpenChat extends StatelessWidget {
  const OpenChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipOval(
                child: Container(
                  width: 40,
                  height: 40,
                  padding: EdgeInsets.all(5),
                  decoration: ShapeDecoration(
                    // image: DecorationImage(
                    //     image: NetworkImage(
                    //   "https://randomuser.me/api/portraits/thumb/men/${getRandomNumber()}.jpg",
                    // )),
                    shape: CircleBorder(
                        side: BorderSide(width: 2, color: Colors.redAccent)),
                  ),
                  child: ClipOval(
                    child: Image.network(
                        "https://randomuser.me/api/portraits/thumb/men/${MathUtil.getRandomNumber()}.jpg",
                        width: 50,
                        height: 50,
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              addHorizontalSpace(10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Next Door Enterprise",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  addVerticalSpace(5.h),
                  Text(
                    "Online",
                    style: TextStyle(
                        color: primaryLightText,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              )
            ],
          )),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 24.h),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                reverse: true,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MeChat(),
                    FromChat(),
                    MeChat(),
                    FromChat(),
                    MeChat(),
                    FromChat(),
                    MeChat(),
                    FromChat(),
                    MeChat(),

                  ],
                ),
              ),
            ),
            Row(
              children: [
                PgActionContainer(icon: Icons.add),
                Expanded(
                    child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Type Something...",
                      hintStyle: TextStyle(color: Colors.white),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 15.h),
                      filled: true,
                      fillColor: primaryLighterBgColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r),
                        borderSide: BorderSide(color: primaryColor, width: 2),
                      )),
                )),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OpenChat()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10.w),
                    width: 48.sp,
                    height: 48.sp,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        border: Border.all(
                            width: 1, color: primaryLightText.withOpacity(0.3)),
                        color: primaryColor),
                    child: Ink(
                      child: Center(
                        child: Transform.rotate(
                          angle: pi,
                          child: Icon(
                            Icons.arrow_drop_down_circle,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
