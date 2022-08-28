import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plugs_app/utils/ui.dart';

class TopPlugView extends StatelessWidget {
  const TopPlugView({Key? key}) : super(key: key);

  //Create random number to get Random Image from image API
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
    return Padding(
      padding: EdgeInsets.only(right: 30.0.w),
      child: InkWell(
        onTap: (){},
        child: Ink(
          child: Container(
            child: Column(
              children: [
                //Get Image from Random API
                ClipOval(
                  child: Image.network(
                      "https://randomuser.me/api/portraits/thumb/men/${getRandomNumber()}.jpg"),
                ),
                addVerticalSpace(5.h),
                Text(faker.company.name().substring(0, 8)),
                addVerticalSpace(5.h),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text("4.2")
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
