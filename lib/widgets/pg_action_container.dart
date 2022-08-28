import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plugs_app/constants/colors.dart';
import 'package:plugs_app/screens/open_chat.dart';

class PgActionContainer extends StatelessWidget {
  const PgActionContainer({Key? key, required this.icon,  this.isLast = false}) : super(key: key);
  final IconData icon;
  final bool isLast;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) =>  OpenChat()));
      },
      child: Container(
        margin: isLast ?  null : EdgeInsets.only(right: 20.w)  ,
        width: 48.sp,
        height: 48.sp,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            border: Border.all(width: 1, color: primaryLightText.withOpacity(0.3)),
            color: primaryLightBgColor),
        child: Ink(child: Center(child: Icon(icon,color: primaryIconColor,))),
      ),
    );
  }
}
