import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plugs_app/constants/colors.dart';
class SearchChip extends StatelessWidget {
  const SearchChip({Key? key, required this.text, required this.index, required this.isSelected, }) : super(key: key);
  final String text;
  final int index;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.w),
       decoration: BoxDecoration(
            border: Border.all(width: 2,color: primaryColor),
         borderRadius: BorderRadius.circular(20.0.r),
         color:isSelected ? Color(0xFF52488D).withOpacity(0.2) : Color(0xFF121023).withOpacity(0.5)
        ),
      padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 5.h),
      child: Text(text, style: TextStyle(
        color: Colors.white,
        letterSpacing: 1,
        fontSize:14.sp,
      )),
    );
  }
}
