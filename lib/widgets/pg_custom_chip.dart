import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plugs_app/constants/colors.dart';
class PgCustomChip extends StatelessWidget {
  const PgCustomChip({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical:2.h, horizontal: 5.w),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(10.r)
      ),
      child: Text(title, style: TextStyle(
        fontSize: 11.sp,
        color: Colors.white,
      )),
    );
  }
}
