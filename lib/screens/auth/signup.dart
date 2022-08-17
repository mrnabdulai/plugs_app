import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plugs_app/constants/colors.dart';
import 'package:plugs_app/screens/auth/login.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/majesticons.dart';
import 'package:plugs_app/widgets/pg_input_field.dart';
import 'package:plugs_app/widgets/pg_primary_button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 16.0.w, right: 16.0.w, top: 90.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 34.0.sp,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: 70.h),
            PGInputField(
              controller: null,
              hintText: "Email",
              icon: IconButton(
                  onPressed: () {},
                  icon:
                      const Iconify(Majesticons.mail, color: primaryIconColor)),
            ),
            SizedBox(height: 30),
            PGInputField(
              controller: null,
              hintText: "Password",
              icon: IconButton(
                onPressed: () {},
                icon: const Iconify(
                  Majesticons.eye,
                  color: primaryIconColor,
                ),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Icon(Icons.arrow_forward, color: Colors.white)
                  ],
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(child: PGPrimaryButton(onPress: () {

            }, text: "SIGN UP")),
            SizedBox(
              height: 60,
            ),
            Center(
              child: Text(
                "Or sign up with social account",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 92,
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    color: primaryLightBgColor,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Color(0xFF000000).withOpacity(0.05),
                        offset: Offset(0.0, 1.0),
                        blurRadius: 3.0,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/google_icon.png",
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 92,
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    color: primaryLightBgColor,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Color(0xFF000000).withOpacity(0.05),
                        offset: Offset(0.0, 1.0),
                        blurRadius: 3.0,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Image.asset("assets/fb_icon.png"),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
