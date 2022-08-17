import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PGPrimaryButton extends StatelessWidget {
  const PGPrimaryButton({Key? key, required this.onPress, required this.text ,this.size}) : super(key: key);
  final  VoidCallback onPress;
  final String text;
  final Size? size;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          fixedSize:size?? Size(240.w, 60.h),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0.r)) // NEW
          ),
      onPressed:onPress,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 16.0, fontWeight: FontWeight.w700, color: Colors.white),
      ),
    );
  }
}
