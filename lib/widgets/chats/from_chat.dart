import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plugs_app/constants/colors.dart';
import 'package:plugs_app/utils/ui.dart';
class FromChat extends StatelessWidget {
  const FromChat({Key? key}) : super(key: key);

  String getRandomAMPM() {
    var list = ['AM', "PM"];

    final random = Random();
    var i = random.nextInt(list.length);
    return list[i];
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.all(20.sp),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.r),
                        topRight: Radius.circular(20.r),
                        bottomLeft: Radius.circular(20.r)),
                    color: Color(0xFF424656),
                  ),
                  child: Text(
                    faker.lorem.sentences(2).join(""),
                    style: TextStyle(color: Colors.white, height: 1.5),
                  ),
                ),
                addVerticalSpace(8.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      faker.date.time().substring(0, 5) + "" + getRandomAMPM(),
                    ),

                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
