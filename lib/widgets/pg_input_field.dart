import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plugs_app/constants/colors.dart';

class PGInputField extends StatelessWidget {
  const PGInputField(
      {Key? key, this.controller, required this.hintText, required this.icon,  this.obscureText = false})
      : super(key: key);
  final TextEditingController? controller;
  final String hintText;
  final Widget icon;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Color(0xFF828282)),
          fillColor: primaryLightBgColor,
          filled: true,
          contentPadding: EdgeInsets.all(20.w),
          suffixIcon: icon,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20.r),
          )),
    );
    ;
  }
}
