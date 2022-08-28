import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plugs_app/constants/colors.dart';
import 'package:plugs_app/utils/ui.dart';

import '../../screens/open_chat.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({Key? key,  this.isOnline = true}) : super(key: key);
  final bool isOnline;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
         Navigator.of(context).push(MaterialPageRoute(builder: (context) => OpenChat()));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 15.h),
        width: double.maxFinite,
        padding: EdgeInsets.all(24.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: primaryLightBgColor,
        ),
        child: Ink(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
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
                  Positioned(right: 5,child: ClipOval(child: Container(width:8.sp, height: 8.sp, color:isOnline ? Colors.green : Colors.grey),)),
                ],
              ),
              addHorizontalSpace(10.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      faker.person.name(),
                      style: TextStyle(color: Colors.white, fontSize: 16.sp,fontWeight: FontWeight.w600),
                    ),
                    addVerticalSpace(2.w),
                    Text(
                      faker.lorem.sentence(),
                      style: TextStyle(color: primaryLightText, fontSize: 12.sp,fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              addHorizontalSpace(10.w),
              ClipOval(
                  child:
                      Container(width: 10.sp, height: 10.sp, color: primaryColor))
            ],
          ),
        ),
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
