import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plugs_app/constants/colors.dart';
import 'package:plugs_app/screens/plug/plug_details_screen.dart';
import 'package:plugs_app/utils/ui.dart';
import 'package:plugs_app/widgets/pg_custom_chip.dart';

class TrendingPlugView extends StatelessWidget {
  const TrendingPlugView({Key? key}) : super(key: key);
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
      padding: EdgeInsets.only(bottom: 24.h),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => PlugDetailsScreen()));
        },
        child: Container(

          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipOval(
                child: Image.network(
                  "https://randomuser.me/api/portraits/thumb/men/${getRandomNumber()}.jpg",
                  width: 65.sp,
                  height: 65.sp,
                  fit: BoxFit.fill,
                ),
              ),
              addHorizontalSpace(10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    faker.company.name().substring(0, 8),
                    style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Hi there are deal in iphones and apple\n products, repairs and swap deals",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: primaryLightText),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Text("4.2"),
                      addHorizontalSpace(10.h),
                      PgCustomChip(title: "Iphone"),
                      addHorizontalSpace(5.w),
                      PgCustomChip(title: "Repairs"),

                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
