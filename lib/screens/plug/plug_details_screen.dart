import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plugs_app/constants/colors.dart';
import 'package:plugs_app/utils/ui.dart';

import '../../utils/math_util.dart';
import '../../widgets/pg_action_container.dart';
import '../../widgets/plugs/review_card.dart';

class PlugDetailsScreen extends StatelessWidget {
  const PlugDetailsScreen({Key? key}) : super(key: key);
  int getRandomNumber() {
    Random rnd;
    int min = 1;
    int max = 75;
    rnd = Random();
    int randToReturn = rnd.nextInt(max) + 1;
    return randToReturn;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 30.sp,
        toolbarHeight: 30.sp,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            Center(
              child: ClipOval(
                child: Container(
                  width: 100,
                  height: 100,
                  padding: EdgeInsets.all(5),
                  decoration: ShapeDecoration(
                    // image: DecorationImage(
                    //     image: NetworkImage(
                    //   "https://randomuser.me/api/portraits/thumb/men/${getRandomNumber()}.jpg",
                    // )),
                    shape: CircleBorder(
                        side: BorderSide(width: 3, color: Colors.redAccent)),
                  ),
                  child: ClipOval(
                    child: Image.network(
                        "https://randomuser.me/api/portraits/thumb/men/${getRandomNumber()}.jpg",
                        width: 50,
                        height: 50,
                        fit: BoxFit.fill),
                  ),
                ),
              ),
            ),
            addVerticalSpace(10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text("4.2"),
                  ],
                ),
                addHorizontalSpace(5.w),
                VerticalDivider(width: 1, color: Colors.white, thickness: 5),
                addHorizontalSpace(5.w),
                Row(
                  children: [
                    Text(
                      "48 Orders",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )
                  ],
                )
              ],
            ),
            addVerticalSpace(24.h),
            Text(
              "Next Door Enterprise",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700),
            ),
            addVerticalSpace(15.h),
            Text(
              "Online",
              style: TextStyle(
                  color: primaryLightText,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700),
            ),
            addVerticalSpace(24.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PgActionContainer(
                  icon: Icons.call,
                ),
                PgActionContainer(
                  icon: Icons.chat,
                ),
                PgActionContainer(
                  icon: Icons.favorite,
                  isLast: true,
                ),
              ],
            ),
            addVerticalSpace(24.h),
            Text(
              (faker.lorem.sentence() + "") * 3,
              style: TextStyle(
                  color: primaryLightText,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700),
            ),
            addVerticalSpace(30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Products",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600),
                ),
                Icon(
                  Icons.shopping_bag,
                  color: primaryIconColor,
                )
              ],
            ),
            addVerticalSpace(15.h),

            Container(
              height: 150.h,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (index, context) => Container(
                  width: 130.w,
                  margin: EdgeInsets.only(right: 20.w),
                  height: 150.h,
                  decoration: BoxDecoration(
                    color: primaryLighterBgColor,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.r),
                    child: Image.network(
                      MathUtil.getRandomImgUrl(),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            addVerticalSpace(30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Reviews ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600),
                ),
                Icon(
                  Icons.outlet_rounded,
                  color: primaryIconColor,
                )
              ],
            ),
            addVerticalSpace(15.h),
            ReviewCard(),
            ReviewCard(),
            ReviewCard(),
            ReviewCard(),
            ReviewCard(),
          ],
        ),
      ),
    );
  }
}
