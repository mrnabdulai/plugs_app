import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plugs_app/constants/colors.dart';
import 'package:plugs_app/utils/ui.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.h),
      width: double.maxFinite,
      padding: EdgeInsets.all(24.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: primaryLightBgColor,
      ),
      child: Row(
        children: [
          ClipOval(
            child: Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(5),
              decoration: ShapeDecoration(
                shape: CircleBorder(
                  side: BorderSide(
                    width: 3,
                    color: Colors
                        .primaries[Random().nextInt(Colors.primaries.length)],
                  ),
                ),
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
          addHorizontalSpace(10.w),
          Expanded(
            child: Text(
              faker.lorem.sentence(),
              style: TextStyle(color: primaryLightText, fontSize: 13.sp),
            ),
          )
        ],
      ),
    );
  }

  getRandomNumber() {
    Random rnd;
    int min = 1;
    int max = 75;
    rnd = Random();
    int randToReturn = rnd.nextInt(max) + 1;
    return randToReturn;
  }
}
